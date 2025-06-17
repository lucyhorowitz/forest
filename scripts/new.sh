#!/bin/bash
var=`./forester new --dest=trees/$1 --prefix=$1`
code=`basename $var .tree`
echo "" >> $var
echo "\title{}" >> $var
echo '\import{macros}' >> $var
echo '\import{base-macros}' >> $var
echo '\import{rel}' >> $var
if [ $1 = "ref" ]; then 
  echo '\taxon{reference}' >> $var
  echo '\author{}' >> $var
elif [ $1 = "q" ]; then 
  echo '\taxon{quote}' >> $var
  echo '\author{}' >> $var
elif [ $1 = "def" ]; then 
  echo '\taxon{definition}' >> $var
  echo '\author{}' >> $var
elif [ $1 != "def" ]; then
  echo '\taxon{}' >> $var 
fi
echo $var