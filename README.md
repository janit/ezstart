ezstart
=======

An example eZ Publish setup. This is not really tested, but more of an example of what kind of structure you might expect when working with eZ Publish.

If you can get this running then the end result should be something like: http://blog.ezpublish.fi

Demo admin credentials: admin/finlandia

Setup a vhost (see doc/) and try these.

Here's something you could try:

```scheme
CREATE DATABASE ezpublish_fi CHARSET utf8;
GRANT ALL ON ezpublish_fi.* TO 'ez'@'localhost' IDENTIFIED BY 'eiHelppoo';
FLUSH PRIVILEGES;
use ezpublish_fi
source default_confs/sql/ezpublish_fi_base.sql

curl -sS https://getcomposer.org/installer | php
sudo php -d memory_limit=-1 composer.phar --prefer-dist update

sudo cp -r default_confs/legacy_settings/override ezpublish_legacy/settings/
sudo cp -r default_confs/legacy_settings/siteaccess/* ezpublish_legacy/settings/siteaccess/

sudo php ezpublish/console ezpublish:configure mainsites site_admin

cd ezpublish_legacy
sudo php bin/php/ezpgenerateautoloads.php -e
cd ..

sudo chown -R www-data:www-data ezpublish/{cache,logs,config} ezpublish_legacy/{design,extension,settings,var} web
sudo find {ezpublish/{cache,logs,config},ezpublish_legacy/{design,extension,settings,var},web} | sudo xargs chmod -R ug+rwX,o+rX
```
