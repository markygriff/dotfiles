#!/bin/bash

for f in *.spa; do
  tar -cvf $f ${f%.*}
done
