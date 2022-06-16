#!/usr/bin/perl
#ProductID|Name|MerchantID|Merchant|Link|Thumbnail|BigImage|Price|RetailPrice|Category|SubCategory|Description|Custom1|Custom2|Custom3|Custom4|Custom5|LastUpdated|status|manufacturer|partnumber|merchantCategory|merchantSubcategory|shortDescription|ISBN|UPC
#use strict;
use DBI;
use SQL::Abstract;
my $sql = SQL::Abstract->new;

my  $user="root";
my  $pass="mungyn1950";
my $driver="mysql";
my $db ="shareasale";
my $host="127.0.0.1";
my $port = "3307";
my $dsn="dbi:$driver:database=$db;host=$host;port=$port";
my $file = shift;
my $table =shift;

my %fields =();
my  $dbn =DBI->connect($dsn,$user,$pass) or die "$DBI::errstr";

open(X,$file);
while(<X>){
$_=~s/YOURUSERID/1286208/gim;
my @f =split(/\|/,$_,12);

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
# #print $f[4],"\n";
sort %fields=(
	productID=>$f[0],
	name=>$f[1],
	merchantID=>$f[2],
	Merchant=>$f[3],
	link=>$f[4],
	thumbnail=>$f[5],
	BigImage=>$f[6],
	price=>$f[7],
	retailprice=>$f[8],
	description=>$f[9]
);

  my ($stmt, @bind) = $sql->insert($table, \%fields);
  my $sth = $dbn->prepare($stmt);
     $sth->execute(@bind);
 }

 close(X);
