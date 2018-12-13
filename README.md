# My Reference Documents for Linux
Checking Your Ubuntu Version From the Terminal

```bash
lsb_release -a
```
## Commands

|Command | Explaination |
| --- | ---|
|pwd|Displays the current working directory of the terminal(print working directory)|
|/|Root Directory|
|echo|Command that write its arguments to standard outout|
|su|used to switch to root user(so that super user permission can be used to excute commands)|
|su username|used to switch to a different user|
|sudo|Excutes only that command with root/super user privileges|
|clear| This command us used to clear the terminal screen. Contents will not be deleted but scrolled down|
|ls|This command will list down directories and files in the current directory|
|cd|Change directory|




# Install Multiple versions of PHP

```bash
apt-get install software-properties-common #Ubuntu 14.04 or 16.04
sudo apt install python-software-properties
sudo add-apt-repository ppa:ondrej/php
```
> Now if you get following error add-apt-repository throws Python error: UnicodeDecodeError: 'ascii' codec can't decode byte 0xc5

> It's because The software-properties-common is buggy, so if have a time, please report this as a bug in software-properties-common.

```bash
sudo LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
```



Next update the repositories
```bash
sudo apt-get update
```
Next install different versions of PHP

```bash
$ sudo apt install php5.6   [PHP 5.6]
$ sudo apt install php7.0   [PHP 7.0]
$ sudo apt install php7.1   [PHP 7.1]
```
Next install most required PHP modules from the list
```bash
$ sudo apt install sudo apt  install php5.6-intl php5.6-mbstring php5.6-cli php5.6-xml php5.6-mysql php5.6-cgi php5.6-gd php5.6-json php5.6-ldap php5.6-mcrypt php5.6-odbc php5.6-sqlite3 
$ sudo apt install php7.0-cli php7.0-xml php7.0-mysql 
$ sudo apt install php7.1-cli php7.1-xml php7.1-mysql 
```
Set Default PHP Version in Ubuntu
```bash
$ sudo update-alternatives --set php /usr/bin/php5.6
```

```bash
$ sudo update-alternatives --set php /usr/bin/php7.0
```
### OR

```bash
$ sudo update-alternatives --config php
```
| Selection   | Path       |      Priority  | Status |
| ---         | ---        |   ---          | ---    |
|* 0          |  /usr/bin/php5.6 |  56     |   auto mode  |
|  1          |  /usr/bin/php5   |  50     |   manual mode|
|  2          | /usr/bin/php5.6  | 56      | manual mode  |
  
  Press enter to keep the current choice[*], or type selection number: 1
  
  To set the PHP version that will work with Apache web server, use the commands below. First disable the current version with the a2dismod command and then enable the one you want with the a2enmod command.
```bash
$ sudo a2dismod php7.0
$ sudo a2enmod php7.1
$ sudo systemctl restart apache2
```
 After switching from one version to another, you can find your PHP configuration file, by running the command below.
 ```bash
 ------------ For PHP 5.6 ------------
$ sudo update-alternatives --set php /usr/bin/php5.6
$ php -i | grep "Loaded Configuration File"

------------ For PHP 7.0 ------------
$ sudo update-alternatives --set php /usr/bin/php7.0
$ php -i | grep "Loaded Configuration File"

------------ For PHP 7,1 ------------
$ sudo update-alternatives --set php /usr/bin/php7.1
$ php -i | grep "Loaded Configuration File"
 ```
 
 TO restart Apache server
 ```bash
 $ sudo service apache2 restart
 ```
 ### OR
  ```bash
 $ sudo systemctl restart apache2
 ```
 # How to Install Multiple PHP Version with Apache on Ubuntu
> [How to Install Multiple PHP Version with Apache on Ubuntu](https://tecadmin.net/install-multiple-php-version-apache-ubuntu/)

> [Run multiple PHP version on the same server using php-fpm and xdebug on Ubuntu 16.04](https://medium.com/@sbuckpesch/run-multiple-php-version-on-the-same-server-using-php-fpm-and-xdebug-on-ubuntu-16-04-6a84f5b7d7ce)
