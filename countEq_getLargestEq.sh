#!/bin/bash

file=Year_Mag_Country.tsv
y=$1

answer=$(grep "$y" "$file"|wc -l)
Largest_years=$(grep "$y" "$file"|sort -g -k2|tail -1|cut -f1)
Largest_magnitude=$(grep "$y" "$file"|sort -g -k2|tail -1|cut -f2)

echo "$y's total earthquake count=$answer;
$y's largest earthquake magnitude is$Largest_magnitude in $Largest_years"