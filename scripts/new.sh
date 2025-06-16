#!/bin/bash
var=`./forester new --dest=trees/$1 --prefix=$1`
code=`basename $var .tree`
echo "" >> $var
echo "\title{}" >> $var
if [ $1 = "ref" ]; then 
  echo '\import{macros}' >> $var
  echo '\import{base-macros}' >> $var
  echo '\taxon{reference}' >> $var
  echo '\author{}' >> $var
elif [ $1 = "q" ]; then 
  echo '\import{macros}' >> $var
  echo '\import{base-macros}' >> $var
  echo '\taxon{quote}' >> $var
  echo '\author{}' >> $var
elif [ $1 = "def" ]; then 
  echo '\import{macros}' >> $var
  echo '\import{base-macros}' >> $var
  echo '\taxon{definition}' >> $var
  echo '\author{}' >> $var
fi
echo $var