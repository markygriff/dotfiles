#!/bin/bash

function  rover() {
  /usr/bin/expect -c '
    spawn ssh spear@ec2-54-224-119-135.compute-1.amazonaws.com
    expect "password:" {send "SPEAR1718\r"}
    expect "$ " {send "sendmetomars\r"}
    expect "password:" {send "nvidia\r"}
    interact
  '
}
