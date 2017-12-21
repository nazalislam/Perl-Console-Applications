#!/usr/bin/env perl

# Naz-Al Islam
# 10/25/2017
#
#
# In a modified copy of a text file, every string "YourName" should
# be reaplaced with the second command line parameter. If a third 
# option is given on the command line it should be used as the 
# out filename instead.
# ----------------------------------------------------

use warnings;

my ($input_file_name, $subs_text, $output_file_name) = @ARGV;
open (DATA, "<$input_file_name") or die "Cannot open input file";

if (defined $output_file_name) {
    open (OUTDATA, ">$output_file_name") or die "Cannot open output file";
} else {
    open (OUTDATA, ">$input_file_name" . ".modified") or die "Cannot open output file";
}

$targetString = "YourName";

while (<DATA>) {
    $_ =~ s/$targetString/$subs_text/ig;
    print OUTDATA $_;
}

