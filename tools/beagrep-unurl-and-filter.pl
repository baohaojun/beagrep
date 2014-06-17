#!/usr/bin/env perl

while (<>) {
    s/%([0-9a-fA-F]{2})/chr(eval("0x$1"))/eg;
    s!^file://!!;
    if (($^O eq "MSWin32" or $^O eq "cygwin") && $_ =~ m,^/.:,) {
        $_ =~ s!^/(.):!"/cygdrive/" . lc $1!e;
    }
    print $_ unless (m!/(bin|gen)/! and -e "$`/AndroidManifest.xml")
}
