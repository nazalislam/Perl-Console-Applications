# Perl-Console-Applications
A collection of Perl programs I created during college projects and personal learnings.

### Sorting
A simple Perl program that will print the following hash's data sorted in case-insensitive alphabetical order by last name. When the last names are the same, sort those by first name. All of the people with the same family name should be grouped together. The names should be printed with the same capitalization as shown here.
```
my %last_name = qw{
   fred flintstone 
   Wilma Flintstone 
   Barney Rubble 
   betty rubble 
   Bamm-Bamm Rubble 
   PEBBLES FLINTSTONE
};
```

### Replace Name
A simple Perl program that makes a modified copy of a text file. In the copy, every string `YourName` (case-insensitive) should be replaced with the second command line parameter. The input file name should be given on the command line as the **first option (don't ask the user!)**, and the output filename should be generated automatically using the corresponding file name with `.modified` at the end.

If a **third option** is given on the command line it should be used as the output filename instead.

Calling the Perl file on the command line like so:

```
$ ./replaceName.pl document.txt Tommy
```

Should output a file `document.txt.modified` with all occurrences of `YourName` replaced with `Tommy`
But calling the command:

```
$ ./replaceName.pl document.txt Tommy namereplaced.txt
```

Should output a file `namereplace.txt` with all occurrences of `YourName` replaced with `Tommy`

### Replace All Names
A simple Perl program that modifies all of the text files (*.txt) in the current directory the program in running in. This program does the same thing that the `Replace Name` does except that it does it to ALL text files in the current directory.
In every text file any occurrence of the string `YourName` (case-insensitive) should be replaced with the first command line parameter entered. The output filenames should be generated automatically using the corresponding file name with .out or .modified at the end.
Calling the Perl file on the command line like so:
```
$ ./replaceAllNames.pl Tommy
```
*The above would loop through any file with .txt at the end and save the files out as, for example, "document.txt.out", "document2.txt.out" with all occurrences of "YourName" replaced with "Tommy". It should leave the existing .txt files unedited and save the results to new files.*