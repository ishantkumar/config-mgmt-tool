# config-mgmt-tool
Some basic config management tool


## Usage

### Use it locally to configure servers

- Login to server
- Clone this repository
- Run bootstrap.sh for any dependencies to install
- Execute below commands . 

```sh
cd scripts

bash default.sh -i php_app_package -u java_app_package
```
where   `-i` option is to install a app_package and `-u` is to uninstall the app_package

