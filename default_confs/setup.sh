
composer.phar install

$ mysql -u USERNAME -pPASSWORD DATABASE < PATH/ezpublish_legacy/kernel/sql/mysql/kernel_schema.sql
$ mysql -u USERNAME -pPASSWORD DATABASE < PATH/ezpublish_legacy/kernel/sql/common/cleandata.sql

php ezpublish/console assets:install --symlink web
php ezpublish/console ezpublish:legacy:assets_install --symlink web

# For 5.1 / 2013.4 and higher, also:
php ezpublish/console assetic:dump --env=prod web


php bin/php/ezpgenerateautoloads.php


   cd /<ezpublish-5-root-dir>/
   php ezpublish/console ezpublish:configure --env=prod <group> <admin_siteaccess>