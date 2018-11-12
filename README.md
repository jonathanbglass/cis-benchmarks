# cis-benchmarks
# 20181112 - jonathan.glass@candidpartners.com
#    Create a script to parse all CIS benchmark PDFs and emit a CSV with recommendations
#    Assume this script is being run inside the directory holding the CIS Benchmark PDF files
#    Known Issues
#	Leaves "_" characters in the TECHNOLOGY field
#	Breaks on the CIS_Oracle_MySQL*5.7*.pdf files. They're formatted strangely. I removed those files from consideration.
