#!/bin/bash
var=`./forester new --dest=trees/$1 --prefix=$1`
code=`basename $var .tree`
echo "" >> $var
echo "\title{}" >> $var
echo '\import{macros}' >> $var
echo '\import{base-macros}' >> $var
echo '\import{rel}' >> $var
if [ $1 = "ref" ]; then 
  echo '\taxon{Reference}' >> $var
  echo '\author{}' >> $var
elif [ $1 = "q" ]; then 
  echo '\taxon{Quote}' >> $var
  echo '\author{}' >> $var
elif [ $1 = "def" ]; then 
  echo '\taxon{Definition}' >> $var
elif [ $1 != "def" ]; then
  echo '\taxon{}' >> $var 
elif [ $1 != "meta" ]; then
  echo '\taxon{Metanote}' >> $var 
fi
echo $var