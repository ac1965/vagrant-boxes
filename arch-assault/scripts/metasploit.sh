#!/bin/sh

echo [+] Installing Metasploit and configuring Postgres 
sleep 3;

mkdir /temp
export TMPDIR=/temp

pacman --noconfirm -S metasploit

unset TMPDIR
rm -rf /temp

systemd-tmpfiles --create postgresql.conf
su - postgres -c "initdb --locale en_US.UTF-8 -E UTF8 -D '/var/lib/postgres/data'"

systemctl start postgresql
systemctl enable postgresql

su - postgres -c "createuser msfdbuser -S -R -D -w"
su - postgres -c "createdb -O msfdbuser msfdb"

cat <<EOF > /usr/share/metasploit/database.yml
production:
  adapter: "postgresql"
  database: "msfdb"
  username: "msfdbuser"
  password: ""
  port: 5432 
  host: "localhost"
  pool: 256
  timeout: 5
EOF

echo 'export MSF_DATABASE_CONFIG=/usr/share/metasploit/database.yml' > /etc/profile.d/msf.sh
chmod +x /etc/profile.d/msf.sh

