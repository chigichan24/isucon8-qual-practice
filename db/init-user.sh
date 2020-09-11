#!/bin/bash

cat <<'EOF' | mysql -uroot
CREATE USER 'isucon'@'%' IDENTIFIED BY 'isucon';
GRANT ALL ON torb.* TO 'isucon'@'%';
CREATE USER 'isucon'@'localhost' IDENTIFIED BY 'isucon';
GRANT ALL ON torb.* TO 'isucon'@'localhost';
GRANT ALL ON *.* to isucon@"192.168.10.1" identified by 'isucon';
EOF
