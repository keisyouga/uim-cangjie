# generate scheme rule file from tablefile
#
# usage:
#   perl tbl2rule.pl < tablefile > scmfile
#
# aaa aa
# aaa ab
# bbb bb
# ccc cc
#  |
#  v
# ((("a" "a" "a")) ("aa" "ab"))
# ((("b" "b" "b")) ("bb"))
# ((("c" "c" "c")) ("cc"))

use strict;
use warnings;

binmode(STDIN, ':utf8');
binmode(STDOUT, ':utf8');

# hash of array
my %hoa = ();

while (<>) {
	my @F = split(' ');
	if (@F == 2) {
		push @{$hoa{$F[0]}}, $F[1];
	}
}

# str => "str"
# str"\ => "str\"\\"
sub quote {
	my $s = shift;

	# escape \
	$$s =~ s/\\/\\\\/g;

	# escape "
	$$s =~ s/"/\\\"/g;

	# quote
	$$s =~ s/^.*$/"$&"/;

	return $$s;
}

for my $k (sort (keys %hoa)) {
	print "(((";
	my @s = split(//, $k);

	for (@s) { quote(\$_); }
	print join " ", @s;
	print ")) (";

	for (@{$hoa{$k}}) {
		quote(\$_);
	}
	print join(" ", @{$hoa{$k}});
	print "))";
	print "\n";
}
