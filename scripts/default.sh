while getopts i:u: flag
do
    case "${flag}" in
        i) install=${OPTARG};;
        u) uninstall=${OPTARG};;
        *) echo "please see the usage \n use -i for install_package and -u to uninstall package";;
    esac
done


## Parameters
package_type=$install
uninstall_package_type=$uninstall

## Install the required packages mentioned in config-mgmt-tool/package_list/packages file 
bash install.sh $package_type

## Configure the files and restart services mentioned 
bash configure.sh


## UnInstall the required packages mentioned in config-mgmt-tool/package_list/packages file 
bash uninstall.sh $uninstall_package_type

## Cleanup if required
bash cleanup.sh
