#!/bin/bash

mkdir data
mkdir plots

duckdb -c "" data/db.duckdb

# Download the Data
scripts/1_download_opm_data.sh

# Unzip the Data
scripts/2_unzip_data.sh

duckdb data/db.duckdb < scripts/3_import_and_merge_data.sql

duckdb data/db.duckdb < scripts/4_manip_data.sql

Rscript scripts/5_make_plot.R

