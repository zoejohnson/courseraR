complete <- function(directory, id = 1:332) {
  
  files <- list.files(directory, full.names=TRUE)
  nobs <- vector()
  
  for (x in id) {
    # loops through files, appending the number of complete cases
    # to the vector "nobs"
    nobs <- append(nobs, sum(complete.cases(read.csv(files[x]))))
  }
  
  # makes id and nobs columns of the dataframe complete_data
  complete_data <- data.frame(id, nobs)
  colnames(complete_data) <- c("id", "nobs")
  complete_data

}