#!/bin/bash
cp orig.txt out.txt

#
#  1. Find the host address to anchor the 'g'lobal command
#  2.  ?^define? << Search backwards to this string (first arg)
#  3.  /}/ << Search forward to the closing brace (second arg)
#  4.  x << Write file
#
#  Note  the -s cmd option:  don't make a sound.
#
ex -sc 'g/address[[:space:]][[:space:]]*172\.29\.16\.103/ ?^define?,/}/d
x' out.txt
