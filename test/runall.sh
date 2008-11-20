#!/bin/bash
#---------------------------------------------------------------------------# 
# Global Variables
#---------------------------------------------------------------------------# 
tests="static unit"

#---------------------------------------------------------------------------# 
# Main
#---------------------------------------------------------------------------# 
# For all python test tools, please visit:
# http://pycheesecake.org/wiki/PythonTestingToolsTaxonomy
#---------------------------------------------------------------------------# 
for t in $tests; do
	cd $t
	for file in `ls *.sh`; do
		[ -x $file ] && ./$file
	done
	cd ..
done

