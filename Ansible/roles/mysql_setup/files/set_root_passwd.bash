#!/bin/bash

mysql --connect-expired-password <<EOF
alter user 'root'@'localhost' identified by '>1nxsqpVq)2p'
EOF
