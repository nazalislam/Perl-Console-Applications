#!/usr/bin/env perl

# Naz-Al Islam
# 12/04/2017
# Sorting hash in alphabetical order by last name

use warnings;

my %last_name = qw{
   fred flintstone 
   Wilma Flintstone 
   Barney Rubble 
   betty rubble 
   Bamm-Bamm Rubble 
   PEBBLES FLINTSTONE
};

sub by_name {
    "\L$last_name{$a}" cmp "\L$last_name{$b}"
        or 
    "\L$a" cmp "\L$b"
}

my @result = sort by_name keys %last_name;

foreach (@result) {
    print "$_" . " $last_name{$_}" . "\n";
}

