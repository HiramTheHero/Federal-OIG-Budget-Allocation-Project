#!/opt/homebrew/bin/bash

mkdir ./data
# Download the Data
scripts/1_download_opm_data.sh
wait
# Unzip the Data
scripts/2_unzip_data.sh
wait
scripts/move_raw_data.sh
wait
# Concatinate the Data
scripts/concat_years.sh
wait

# Subset Data
scripts/subset_data.sh

# mkdir ./plots
# Using R Method
# Rscript ./scripts/make_plot.R