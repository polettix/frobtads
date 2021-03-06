#! /bin/sh

# Diff a test result against the reference log
#
# The reference log is in $T3_LOG
# The result file to compare is in $T3_OUT
#
# We'll store a .diff or a .succ file in $T3_OUT based on the result

# clean up any old success/difference files we have hanging around
rm -f "$T3_OUT/$1.succ"
rm -f "$T3_OUT/$1.diff"

if test -f "$T3_OUT/$1.log"; then
    :
else
    echo "Output file '$T3_OUT/$1.log' not created - test failed" > "$T3_OUT/$1.diff"
    exit 1
fi

diff -u "$T3_OUT/$1.log" "$T3_LOG/$1.log" > "$T3_OUT/$1.diff"

if test $? = "0"; then
    echo "Success" > "$T3_OUT/$1.succ"
    rm "$T3_OUT/$1.log"
    rm "$T3_OUT/$1.diff"
    exit 0
fi

exit 1
