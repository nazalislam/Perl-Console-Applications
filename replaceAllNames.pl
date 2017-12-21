#!/usr/bin/env perl

# Naz-Al Islam
# 11/03/2017
# 
# In the current directory, In All text files in the current 
# directory, any occurence of `YourName` will be replaced 
# with first command line parameter entered.
#-------------------------------------------

use warnings;

@files = glob "*.txt";
my $arguments = @ARGV;
my $subs_text = $ARGV[0];

$targetString = "YourName";

foreach $file (@files) {
    open (DATA, "<$file") or die "Cannot open input file";
    open (OUTDATA, ">$file" . ".out") or die "Cannot open output file";
    while (<DATA>) {
        $_ =~ s/$targetString/$subs_text/ig;
        print OUTDATA $_;
    }
}
