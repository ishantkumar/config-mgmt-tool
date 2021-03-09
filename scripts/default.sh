## Parameters
package_type=$1

## Install the required packages mentioned in config-mgmt-tool/package_list/packages file 
bash install.sh $package_type

## Configure the files and restart services mentioned 
bash configure.sh


## Cleanup if required
bash cleanup.sh
