
#!/bin/sh
package_list=../package_list/packages
while IFS= read -r line; do
    apt install $line -y
done < package_list
