# My Reference Documents for Linux
Checking Your Ubuntu Version From the Terminal

```bash
lsb_release -a
```
# Install Multiple versions of PHP

```bash
apt-get install software-properties-common #Ubuntu 14.04 or 16.04
sudo apt install python-software-properties
sudo add-apt-repository ppa:ondrej/php
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
$ sudo apt install php5.6-cli php5.6-xml php5.6-mysql 
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
 Selection    Path             Priority   Status
------------------------------------------------------------
* 0            /usr/bin/php5.6   56        auto mode
  1            /usr/bin/php5     50        manual mode
  2            /usr/bin/php5.6   56        manual mode
  
  Press enter to keep the current choice[*], or type selection number: 1
  
  
