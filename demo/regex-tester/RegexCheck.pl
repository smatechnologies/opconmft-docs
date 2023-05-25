use strict;

use Getopt::Long qw(GetOptions);

my $searchPattern;
my $replacePattern;
my $searchString;

GetOptions(
    'string|s=s' => \$searchString,
    'pattern|p=s' => \$searchPattern,
    'replace|r=s' => \$replacePattern,
	
);

# cleanup search pattern by removing whitespace & + signs
$replacePattern =~ tr/ //ds;
$replacePattern =~ tr/\+//ds;
# wrap search pattern in double quotes
$replacePattern =~  s/(.*)/"$1"/;
print"--------------------------------------\n";
print "searchString   = $searchString\n";
print "searchPattern  = $searchPattern\n";
print "replacePattern = $replacePattern\n";

# display pattern match result
my @matches = $searchString =~ m/$searchPattern/;
print "match result   = @matches\n";

my $changed = $searchString;
$changed =~ s/$searchPattern/$replacePattern/ee;
print"--------------------------------------\n";
print "replace result = $changed\n";
print"--------------------------------------\n";
