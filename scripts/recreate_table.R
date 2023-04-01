library(data.table)
library(writexl)

setDTthreads(0) # Get full Multi-threading

dt <- fread("./data/subset_data.txt")
category_data <- fread("./scripts/category_data.csv", keepLeadingZeros = TRUE)

occ_data <- fread("./scripts/DTocc.csv", keepLeadingZeros = TRUE)
agy_data <- fread("./scripts/DTagy.csv", keepLeadingZeros = TRUE)

#dt = category_data[dt, on = "OCC"]

#dt = dt[category == "investigation" | category == "audit"]

#dt[, category := NULL]

dt = occ_data[dt, on = "OCC"]

dt = agy_data[dt, on = "AGYSUB"]

dt = dt[, .(OCCT, AGYSUBT, DATECODE)]

full_fte_by_ig <- dt[, .N, by = c("AGYSUBT", "OCCT")][order(AGYSUBT, OCCT)]
top_10_fte <- dt[, .N, by = OCCT][order(-N)][1:10]

write_xlsx(list(full_fte_by_ig,top_10_fte), "./data/count_data.xlsx")

# For just 2010 data.
dt = dt[grep("2010",DATECODE), .(OCCT, AGYSUBT, DATECODE)]

full_fte_by_ig <- dt[, .N, by = c("AGYSUBT", "OCCT")][order(AGYSUBT, OCCT)]
top_10_fte <- dt[, .N, by = OCCT][order(-N)][1:10]

write_xlsx(list(full_fte_by_ig,top_10_fte), "./data/count_data_2010.xlsx")