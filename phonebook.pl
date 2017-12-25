#!/usr/bin/env perl

# Naz-Al Islam
# 10/13/2017
# Phonebook - Asks the user for name and phone number
# until the user enters 'print'. Finally prints the
# contents of phonebook

use warnings;

sub printPhonebook {
    %hash = @_;
    foreach $key (keys %hash) {
        print $key . " - " . $hash{$key} . "\n";
    }
}

$stopLoop = 1;

while ($stopLoop) {
    print "Please enter a name: ";
    chomp($name = <STDIN>);

    if ($name ne "print") {
        print "Please enter a number: ";
        chomp($number = <STDIN>);
        $phonebook{$name} = $number;
    } else {
        $stopLoop = 0;
        print "\nPrinting phonebook . . . \n\n";
        print "[Name - Number]\n===============\n";
        &printPhonebook(%phonebook);
    }
}
