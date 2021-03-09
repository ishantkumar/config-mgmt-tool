# config-mgmt-tool
Some basic config management tool


## Usage

### Use it to configure servers locally

- Login to server
- Clone this repository
- Run bootstrap.sh for any dependencies to install
- Execute below commands . 

```sh
cd scripts

bash default.sh -i php_app_package -u java_app_package
```
where   `-i` option is to install a app_package and `-u` is to uninstall the app_package


### Use it to configure servers remotely

- Clone this repository on your local machine
- Execute below commands .

```sh
chmod +x remote_init.sh
./remote_init.sh <hostname/ip> <host_password> <package_to_install>
```

Example :
```sh

./remote_init.sh 192.168.9.34 EXAMPLEPASSWORD php_app_package
```
