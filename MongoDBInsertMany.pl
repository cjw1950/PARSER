#!/usr/bin/perl
use strict;
use warnings;
use MongoDB;
my $client = MongoDB->connect('mongodb://127.0.0.1:27017/VapDrugs');
my $collection = $client->ns('VapDrugs.UBEST');
 my $file = shift;
#my $database =shift;
 my %fields =();

open(X,$file);
while(<X>){
$_=~s/YOURUSERID/1286208/gim;
my @f =split(/\|/,$_,12);

chomp @f;

 %fields=(
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
my $r= $collection->insert_one(\%fields);
}
close(X)

