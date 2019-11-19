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


## ls command
```bash
$ ls [options] [file | directory]
```

|Command | Explaination |
| --- | ---|
|ls|This command lists all the contents in the current working directory|
|ls path|By specifying the path after ls, the content in the path will be display|
|ls -l|using 'l' flag, lists all th contents along with its owner settings, permissions & time stamp (long format)|
|ls -a|using 'a' flag, it will lists all the hidden contents in the specified directory|
|ls -author|using 'author' flag, lists the contents in the specified directory along with its owner|
|ls -S|using 's' flag, sorts and lists the contents in the specified directory by size|
|ls *.html|using '*' flag, lists only the content in the directory of a particular format|
|ls -lS > file.txt| using '>' flag, copies the result of ls command into a text file|

## cd command
```bash
$ cd [directory]
```

|Command | Explaination |
| --- | ---|
|cd|Changes the directory to home directory|
|cd ~|This command also changes the directory to home directory|
|cd /|Changes the directory to root directory|
|cd ..|Changes the directory to ots parent directory|
|cd 'xx yy'|We specify the folder name in inverted commsa because there is a space in the folder name|

## Working with files: cat command
```bash
$ cat [options] file1 [file2..]
```

|Command | Explaination |
| --- | ---|
|cat|This command is used to display the context of the text files and concatenate several files into one|
|cat -b|this is used to add line numbers to non blank lines|
|cat -n|This is used to add line numbers to all lines|
|cat -s|This is used to squeeze blank lines into one line|
|cat -E| Show $ at the end of line|

```bash
$ cat > file1.txt
```
The '>' flag can be used to create a new file and enter text contents from the terminal

```bash
$ cat >> file1.txt
```
The '>>' flag can be used to append text contents to an existing file from the terminal

## Working with files: grep command

> We use the 'grep' command to search for a particular string/word in a text file
> This is similar to 'Ctrl+F', but excuted via a CLI

```bash
grep options file1.txt \\Returns results for matching string 'options'
grep -i options file1.txt \\Returns results for case insensitive strings
grep -n options file1.txt \\Returns the matching strings along with their line number
grep -v options file1.txt \\Returns results of lines not matching the search string
grep -c options file1.txt \\Returns the number of lines in which the results matched search string
```
## Working with files: sort command

> We use the 'sort' command to sort the results of search either alphabetically or numerically
> Files, file contents and directories can be sorted.

```bash
sort file1.txt \\Sorts the contents of file1.txt and returns them in alphabetical order
sort file1.txt file2.txt \\ Sorts the content of both file1.txt & file2.txt
sort -r file1.txt \\ 'r' flag returns the results in reverse order
sort -f file1.txt \\ 'f' flag does case insensitive sorting
sort -n file1.txt \\  'n' flag returns the results as per numerical order
```

## Working with '|' command

> The '|' command a.k.a 'pipe' commands is used to output the result of one command as input to another command.
> '|' are used to perform two operation in the same command.

```bash
grep dh File1.txt File2.txt | sort \\ Searches for string 'dh' from both files and sorts the results
grep dh File1.txt File2.txt | sort -r \\ Sorts the results in reverse order
```

## Working with files & Directories: 'cp' command
```bash
$ cp [options] source destination
```

|Command | Explaination |
| --- | ---|
|cp|This command is used to copy files and directories|
|cp -i|Enters the interacive mode; CLI asks before overwriting files|
|cp -n|Does not overwrite the file|
|cp -R|Recursive copy for copying directories; Copies even hidden files|
|cp -v| Verbose; Prints informative messages (prints progress)|

> By default 'cp' copies only files

## Working with files & Directories: 'mv' command
```bash
$ mv [options] source destination
```

|Command | Explaination |
| --- | ---|
|mv|This command is used to move files and directories|
|mv -i|Enters the interacive mode; CLI asks before overwriting files|
|mv -u|Updates the destination file only when source file is different from destination file|
|mv -v|Verbose; Prints source and destination files (prints progress)|


## Working with Directories: 'mkdir' command
```bash
$ mkdir directory-path
```

|Command | Explaination |
| --- | ---|
|mkdir|This command is used to create a new directory|
|mkdir -p| Creates both a new parent directory and a sub-directory|
|mkdir --parents|This is also used for the same process|
|mkdir -p file1/{f2,f3,f4}|This is used to create multiple subdirectories inside the new parent directory|


## Working with Files & Directories: 'rm' & 'rmdir' command
```bash
$ rmdir foldername
$ rm foldername/filename
```

|Command | Explaination |
| --- | ---|
|rmdir|This command is used to remove the specified directory(Empty)|
|rmdir -p| Removes both the parent and child directory|
|rmdir -pv| Removes both the parent and child directories along with the verbose|
|rm -r| Removes even non empty directories|
|rm -rp|Removes non empty directories including parent and subdirectories|

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
> [shtool at /tmp does not exist or is not executable](https://support.plesk.com/hc/en-us/articles/115001406994--pecl-install-fails-on-Plesk-for-Linux-server-shtool-at-tmp-does-not-exist-or-is-not-executable)

