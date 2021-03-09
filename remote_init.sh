php_app_package=$1
java_app_package=$2
git clone https://github.com/ishantkumar/config-mgmt-tool.git
cd config-mgmt-tool/scripts
bash default.sh -i $php_app_package -u $java_app_package
