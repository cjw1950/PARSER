#!/usr/bin/perl
use strict;

#
#ProductID|Name|MerchantID|Merchant|Link|Thumbnail|BigImage|Price|RetailPrice|Category|SubCategory|Description|Custom1|Custom2|Custom3|Custom4|Custom5|LastUpdated|status|manufacturer|partnumber|merchantCategory|merchantSubcategory|shortDescription|ISBN|UPC 
my $file = shift;
open(X,$file);
print '[',"\n";
while(<X>){
$_=~s/YOURUSERID/1286208/gim;
$_=~s/&lt/>/gim;
$_=~s/&gt/>/gim;
$_=~s/(\d+)\"/$1 inch /gim;

my @f =split(/\|/,$_);
$f[11]=~s/\b\"(.+)\b\"/$1/gim;
$f[11]=~s/\"//gim;
$f[11]=~s/\'//gim;
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
#
 #print $f[0],"\t",$f[1],"\t",$f[2],"\t",$f[3],"\t",$f[4],"\t",$f[5],"\t",$f[6],"\t",$f[7],"\t",$f[8],"\t",$f[9],"\t",$f[11],"\n";
 
 
print '{';
 print '"productID": ',$f[0],',"name":','"',$f[1],'"',',"merchantID":','"',$f[2],'"',',"Merchant":','"',$f[3],'"',',"link":','"',$f[4],'"',',"thumbnail":','"',$f[5],'"',',"BigImage":','"',$f[6],'"',',"price":','"',$f[7],'"',',"retailprice":','"',$f[8],'"',',"description":','"',$f[11],'"',"\t";
 print '},',"\n";

   }
   print ']',"\n";
close(X);