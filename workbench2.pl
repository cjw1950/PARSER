#!/usr/bin/perl
#ProductID|Name|MerchantID|Merchant|Link|Thumbnail|BigImage|Price|RetailPrice|Category|SubCategory|Description|Custom1|Custom2|Custom3|Custom4|Custom5|LastUpdated|status|manufacturer|partnumber|merchantCategory|merchantSubcategory|shortDescription|ISBN|UPC 
use strict;

my $file = shift;
my $table =shift;


open(X,$file);
while(<X>)
{ 
$_=~s/YOURUSERID/1286208/gim;
my @f =split(/\|/,$_,14);

chomp @f;
# 0 productID
# 1 name
# 2 merchantID
# 3 Merchant
# 4 link
# 5 thumbnail
# 6 BigImage
# 7 price
# 8 retailprice
# 11 description
#print $f[4],"\n";
# %fields=(	
# 	productID=>$f[0],
# 	name=>$f[1],
# 	merchantID=>$f[2],
# 	Merchant=>$f[3],
# 	link=>$f[4],
# 	thumbnail=>$f[5],
# 	BigImage=>$f[6],
# 	price=>$f[7],
# 	retailprice=>$f[8],
# 	description=>$f[9]
# );

print "insert into $table (productID,name,merchantID,Merchant,link,thumbnail,BigImage,price,retailprice,description) values ($f[0],$f[1],$f[2], $f[3],$f[4],$f[5],$f[6],$f[7],$f[8],$f[9],$f[11])";
print "\n\n"
 
 # "\"", $f[0],"\"",
 # ",\"",$f[1],"\"",
 # ",\"",$f[2],"\"",
 # ",\"",$f[3],"\"",
 # ",\"",$f[4],"\"",
 # ",\"",$f[5],"\"",
 # ",\"",$f[6],"\"",
 # ",\"",$f[7],"\"",
 # ",\"",$f[8],"\"",
 # ",\"",$f[9],"\"",
 # ",\"",$f[11],"\"),";
 # "\n\n";

  }
close(X);
