package Complete::PPR;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Complete::Common qw(:all);

use Exporter 'import';
our @EXPORT_OK = qw(
                       complete_ppr_subpattern
               );

our $SubPatterns; # PRECOMPUTE

our %SPEC;

$SPEC{':package'} = {
    v => 1.1,
    summary => 'Completion routines related to PPR',
};

$SPEC{complete_ppr_subpattern} = {
    v => 1.1,
    summary => 'Complete from available PPR subpattern names',
    args => {
        %arg_word,
    },
    result_naked => 1,
    result => {
        schema => 'array',
    },
};
sub complete_ppr_subpattern {
    require Complete::Util;

    my %args  = @_;
    Complete::Util::complete_array_elem(%args, array => $SubPatterns);
}

1;
# ABSTRACT:

=head1 DESCRIPTION


=head1 SEE ALSO

L<Complete>

Other C<Complete::*> modules.
