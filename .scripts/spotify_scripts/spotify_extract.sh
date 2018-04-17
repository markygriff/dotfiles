#!/bin/bash

for f in *.spa; do
  [ -d ${f%.*} ] ||mkdir ${f%.*}
  tar -xvf $f -C ${f%.*};
done
