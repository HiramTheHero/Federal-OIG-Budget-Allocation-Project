#!/opt/homebrew/bin/bash

# PP begins in December of 2016 

# Cat into pre December 2016
touch ./data/data_files/march_2010_to_sep_2016.txt

cat ./data/data_files/FACTDATA_DEC2010.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_DEC2011.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_DEC2012.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_DEC2013.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_DEC2014.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_DEC2015.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_JUN2010.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_JUN2011.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_JUN2012.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_JUN2013.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_JUN2014.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_JUN2015.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_JUN2016.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_MAR2010.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_MAR2011.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_MAR2012.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_MAR2013.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_MAR2014.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_MAR2015.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_MAR2016.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_SEP2010.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_SEP2011.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_SEP2012.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_SEP2013.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_SEP2014.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_SEP2015.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
sed '1d' ./data/data_files/FACTDATA_SEP2016.TXT >> ./data/data_files/march_2010_to_sep_2016.txt
# Cat into post December 2016

touch ./data/data_files/dec_2016_to_sep_2021.txt

sed '1d' ./data/data_files/FACTDATA_DEC2016.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_DEC2017.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_DEC2018.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_DEC2019.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_DEC2020.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_JUN2017.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_JUN2018.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_JUN2019.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_JUN2020.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_JUN2021.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_MAR2017.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_MAR2018.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_MAR2019.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_MAR2020.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_MAR2021.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_SEP2017.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_SEP2018.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_SEP2019.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_SEP2020.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt
sed '1d' ./data/data_files/FACTDATA_SEP2021.TXT >> ./data/data_files/dec_2016_to_sep_2021.txt

# Remove non-concatinated files.
#rm ./data/FACTDATA*.TXT

# Trim to just the columns we need.

# Pre December 2016
awk -F, '{print $1 "|" $7 "|" $16}' "./data/data_files/march_2010_to_sep_2016.txt" >> ./data/data_files/full_data.txt

# Post December 2016
awk -F, '{print $1 "|" $7 "|" $17}' "./data/data_files/dec_2016_to_sep_2021.txt" >> ./data/data_files/full_data.txt

#cat \
#./data/data_files/march_2010_to_sep_2016_2.txt \
#./data/data_files/dec_2016_to_sep_2021_2.txt \
#> ./data/data_files/full_data.txt

# Remove full file and rename.
rm ./data/data_files/march_2010_to_sep_2016.txt
rm ./data/data_files/dec_2016_to_sep_2021.txt
