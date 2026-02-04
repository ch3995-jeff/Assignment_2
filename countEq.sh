#!/bin/bash

file=Year_Mag_Country.tsv
y=$1

answer=$(grep "$y" "$file"|wc -l)

echo "$y=$answer"