#!/bin/sh

uninstall_package_type=$1
while IFS= read -r line; do
    apt remove $line -y
done < ../package_list/$uninstall_package_type
