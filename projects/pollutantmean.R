pollutantmean <- function(directory, pollutant, id = 1:332) {
  # empty dataframe to bind csv files to
    all_data <- data.frame()
    
  # "files" is a list/vector of the csv files (to rbind)      
    files <- list.files(directory, full.names = TRUE)
  
  # use a for-loop to rbind all files in directory
    for (x in id) {
          all_data <- rbind(all_data, read.csv(files[x]))
  }
    
  # subset all_data to find specified pollutant
    data_sub <- all_data[, pollutant]
  
  # find the mean without NA values
    mean(data_sub, na.rm = TRUE)
  
}
