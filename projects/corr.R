source("complete.R")
corr <- function(directory, threshold = 0){
        files <- list.files(directory, full.names=TRUE)
        number_of_complete_cases <- complete(directory)
        correlation <- vector()
        for (x in 1:length(files)) {
                if (number_of_complete_cases$nobs[x] > threshold) {
                        # if the complete cases > threshold, calculate the cor(sulfate, nitrate)
                        # cor(sulf, nitr) only at locations where this is true
                        file <- read.csv(files[x])
                        correlation <- append(correlation, cor(file$sulfate, file$nitrate, use = "complete"))#, na.rm = TRUE) 
                } else if (sum(complete.cases(files[x])) == 0) {
                        correlation <- numeric()
                }
        }
        return(correlation)
}