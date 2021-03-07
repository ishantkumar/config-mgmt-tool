#!/bin/sh
while IFS= read -r line; do
    apt install $line -y
done < ../package_list/packages
