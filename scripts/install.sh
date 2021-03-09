#!/bin/sh

package_type=$1
while IFS= read -r line; do
    apt install $line -y
done < ../package_list/$package_type
