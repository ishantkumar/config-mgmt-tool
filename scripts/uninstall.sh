#!/bin/sh

package_type=$1
while IFS= read -r line; do
    apt remove $line -y
done < ../package_list/$package_type
