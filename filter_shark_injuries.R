# this is a script that filter out rows with shark-related injuries in claims data using ICD e-codes

# load library
library(data.table)

# store icd code
shark_icd_code <- "W56.4" # from ICD10: https://www.icd10data.com/ICD10CM/Codes/V00-Y99/W50-W64/W56-

# function to return rows containing any instance of shark injury e-code string

filter_shark_injuries <- function(df, shark_icd_code) {
  
  # convert to data.table for efficiency
  dt <- as.data.table(df)
  
  # create a logical vector indicating rows that contain the shark-related ICD code
  rows_with_shark_code <- dt[, Reduce(`|`, lapply(.SD, function(x) grepl(shark_icd_code, x, fixed = TRUE))), .SDcols = names(dt)]
  
  # filter the data.table to return only the rows that contain the search string
  result <- dt[rows_with_shark_code]
  
  # convert back to data.frame 
  return(as.data.frame(result))
  
}



# Example:

# Create a sample data.frame

df <- data.frame(pt_id = c("0001", "0002", "0003"), 
                 ICD_DGNS_01 = c("W19XX", "W56.41", "I21.9"), 
                 ICD_DGNS_02 = c("S82", NA, "W19XX"),
                 ICD_DGNS_03 = c(NA, NA, NA))


# Filter rows containing shark injury e-codes

filtered_rows <- filter_shark_injuries(df, shark_icd_code)

print(filtered_rows)
