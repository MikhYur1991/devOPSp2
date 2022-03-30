#!/bin/bash

mysql <<EOF
create database testdb;
create user 'testuser'@'localhost' identified by '>1nxsqpVq)2p';
grant all on testdb.* to 'testuser'@'localhost';
EOF
