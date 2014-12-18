<?php /* #?ini charset="utf-8"?

[DatabaseSettings]
DatabaseImplementation=ezmysql
Server=localhost
User=ez
Password=eiHelppoo
Database=ezpublish_fi

[ExtensionSettings]
ActiveExtensions[]=ezjscore
ActiveExtensions[]=ezoe
ActiveExtensions[]=ezformtoken
ActiveExtensions[]=ezwt
ActiveExtensions[]=ezie
ActiveExtensions[]=html5boilerplate

[FileSettings]
VarDir=var/ezpublish_fi

[Session]
SessionNameHandler=custom

[SiteSettings]
DefaultAccess=site_public
SiteList[]
SiteList[]=site_admin

[SiteAccessSettings]
CheckValidity=false
AvailableSiteAccessList[]
AvailableSiteAccessList[]=site_public
AvailableSiteAccessList[]=site_blog_public
AvailableSiteAccessList[]=site_admin
RelatedSiteAccessList[]
RelatedSiteAccessList[]=site_public
RelatedSiteAccessList[]=blog_site_public
RelatedSiteAccessList[]=site_admin
MatchOrder=host;uri

# Host matching
HostMatchMapItems[]=ezpublish.fi.local;site_public
HostMatchMapItems[]=blog.ezpublish.fi.local;site_blog_public
HostMatchMapItems[]=admin.ezpublish.fi.local;site_admin

#URIMatchMapItems[]=eng;site_public_eng

[InformationCollectionSettings]
EmailReceiver=webmaster@example.com

[MailSettings]
Transport=sendmail
AdminEmail=webmaster@example.com
EmailSender=test@example.com

[RegionalSettings]
Locale=eng-GB
ContentObjectLocale=eng-GB
TextTranslation=disabled
