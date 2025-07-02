#!/bin/bash
var=`./forester new --dest=trees/$1 --prefix=$1`
code=`basename $var .tree`
echo "" >> $var
echo '\import{macros}' >> $var
echo '\import{base-macros}' >> $var
echo '\import{rel}' >> $var
if [ $1 = "ref" ]; then 
  echo '\taxon{Reference}' >> $var
  echo '\author{}' >> $var
  echo '\title{}' >> $var
elif [ $1 = "q" ]; then 
  echo '\taxon{Quote}' >> $var
  echo '\author{}' >> $var
  echo '\title{}' >> $var
elif [ $1 = "def" ]; then 
  echo '\taxon{Definition}' >> $var
  echo '\title{}' >> $var
elif [ $1 = "daily" ]; then
  echo '\taxon{Daily}' >> $var
  echo "\title{$(date +%Y-%m-%d)}" >> $var
  echo '\author{lucy}' >> $var
  echo '\put\transclude/expanded{false}' >> $var
elif [ $1 != "def" ]; then
  echo '\taxon{}' >> $var
  echo '\title{}' >> $var 
elif [ $1 != "meta" ]; then
  echo '\taxon{Metanote}' >> $var 
  echo '\title{}' >> $var
fi
echo $var