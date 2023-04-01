#!/opt/homebrew/bin/bash

mkdir data/zipped_files
mkdir data/data_files

for f in ./data/*.zip; do unzip -j "$f" "FACTDATA_*.TXT" -d "data/data_files"  & done
wait

for f in ./data/*.zip; do unzip -jp "$f" "DTagy.txt" >> "data/data_files/DTagy.csv" ; done
for f in ./data/*.zip; do unzip -jp "$f" "DTocc.txt" >> "data/data_files/DTocc.csv" ; done


mv data/*.zip data/zipped_files

