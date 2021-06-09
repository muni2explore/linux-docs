#!/bin/bash

exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>log.out 2>&1

######################
args=("$@")

ACMESH=/home/ubuntu/.acme.sh/acme.sh
SITE_NAME=${args[0]}





#t='\a\b\c'; echo "${t//'\'/"./"}" >&3

Q_SITE_NAME="${SITE_NAME/'.'/"\."}"

echo $Q_SITE_NAME  >&3
echo $SITE_NAME  >&3

echo "${SITE_NAME/'.'/"\\."}" >&3

#echo $ACMESH --force --issue --dns dns_gd -d $SITE_NAME -d *.$SITE_NAME >&3
#sudo cp nginx_config_template.txt /etc/nginx/sites-available/$SITE_NAME



# /usr/bin/awk '{sub("DOMAIN_NAME",${SITE_NAME})}1' nginx_config_template.txt > temp.txt && mv temp.txt $SITE_NAME

/usr/bin/awk  -v cuv1="DOMAIN_NAME" -v cuv2="$SITE_NAME" '{gsub(cuv1,cuv2);}1' nginx_config_template.txt > temp.txt
# /usr/bin/awk  -v cuv3="QQ" -v cuv4="$Q_SITE_NAME" '{gsub(cuv3,cuv4);}1' temp.txt > temp1.txt && mv temp1.txt $SITE_NAME
/usr/bin/awk  -v cuv3="QQ" -v cuv4="$Q_SITE_NAME" '{gsub(cuv3,cuv4);}1' temp.txt > temp1.txt


sudo ln -s /etc/nginx/sites-available/$SITE_NAME /etc/nginx/sites-enabled
sudo systemctl reload nginx
