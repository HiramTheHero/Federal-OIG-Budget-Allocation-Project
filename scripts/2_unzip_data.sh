#!/bin/bash

mkdir data/zipped_files
mkdir data/data_files

echo "Unzipping Main Datasets"
for f in ./data/*.zip; do unzip -j "$f" "FACTDATA_*.TXT" -d "data/data_files"  ; done
echo "DONE"

echo "Unzipping Agency Files"
for f in ./data/*.zip; do unzip -jp "$f" "DTagy.txt" >> "data/data_files/DTagy.csv" ; done
echo "DONE"

echo "Unzipping Occupation Files"
for f in ./data/*.zip; do unzip -jp "$f" "DTocc.txt" >> "data/data_files/DTocc.csv" ; done
echo "DONE"


mv data/*.zip data/zipped_files

