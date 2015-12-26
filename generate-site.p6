use v6;

use lib 'lib', '../Pod-To-HTML/lib/';
use DocSite::Generator;

sub MAIN (
    Bool :$overwrite-typegraph = False,
    Bool :$disambiguation = True,
    Bool :$search-file = True,
    Bool :$highlight = True,
    Bool :$inline-python = True,
    Bool :$verbose = True,
    Int  :$sparse = 0,
    Int  :$threads = 4,
    Str  :$root = $*SPEC.catdir( $*CWD )
) {
    DocSite::Generator.new(
        :$overwrite-typegraph,
        :$disambiguation,
        :$search-file,
        :$highlight,
        :$inline-python,
        :$verbose,
        :$sparse,
        :$threads,
        :root( IO::Path.new($root) ),
    ).run;
}