#!/bin/sh
# 20181112 - jonathan.glass@candidpartners.com
#    Create a script to parse all CIS benchmark PDFs and emit a CSV with recommendations
#    Assume this script is being run inside the directory holding the CIS Benchmark PDF files
#    Known Issues
#	Leaves "_" characters in the TECHNOLOGY field
#	Breaks on the CIS_Oracle_MySQL*5.7*.pdf files. They're formatted strangely. I removed those files from consideration.

# just parse pages 2 - 10 and don't worry about page breaks. send the output to STDOUT
# identify lines beginning with numbers and containing multiple periods - Table of Content lines
# remove the periods and the trailing page number
# find any PIPE symbols and replace them with commas
# find a line starting with a number and put a PIPE after the first field, also put delimiters around Scored and not Scored
# run all that output through AWK and prepend the FILE NAME into
# run that output thru SED and break apart the CIS_TECHNOLOGY_BENCHMARK_V1.0.0 field into 3 fields and remove the PDF extension
# Send all that to a CSV file that's really a PIPE Delimited File

for i in *.pdf; do 
pdftotext -nopgbrk -f 2 -l 10 ${i} - | \
grep "^[0-9]" | \
grep  "\.\.\.\.\." | \
sed "s/\.\.* [0-9]*$//g" |\
sed -e "s/|/,/g" -e "s/^[0-9.]* /&|/g" -e "s/(Scored/|&/g" -e "s/(Not/|&/g" | \
awk -v i="$i" '{ print i "|" $0;}'| \
sed -e "s/CIS_/CIS|/g" -e "s/_Benchmark_/|Benchmark|/g" -e s/\.pdf//g; 
done > benchmarks.csv
