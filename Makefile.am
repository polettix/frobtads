## Makefile.am -- Process this file with automake to produce Makefile.in

## This is the Automake master-file.  It includes the other "fragments"
## as necessary (based on what configure.ac suggests).

## This will be copied verbatim to the generated Makefile.in and
## Makefile.
##
# This file has been generated automatically. Any changes made to this
# file will be *lost*.

## Include the rules common to many of the executables.
##
include $(srcdir)/Common.am

## Include compiler data file definitions.
##
include $(srcdir)/T3CompData.am

## Because each individual makefile expands bin_PROGRAMS with '+=', it
## must have been previously set, even if it's empty.
##
bin_PROGRAMS =

## If we should build the compilers, include their makefiles.
##
if BUILD_T2_COMPILER
include $(srcdir)/T2Compiler.am
endif

if BUILD_T3_COMPILER
include $(srcdir)/T3Compiler.am
endif

## Ditto for the interpreter.
##
if BUILD_INTERPRETER
include Frob.am
endif
