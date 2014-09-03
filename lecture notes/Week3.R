## Loop Functions
## Looping on the command line
        ## lapply: Loop over a list and evaluate a fcn on each element
                ## Takes 3 args: 1) a list X, 2) a FCN, 3) other args (...)
                ## if X isn't a list, it'll as.list coerce it (if possible)
                ## Always returns a LIST
                ## Names are preserved
                ## Anonymous functions don't have names-- write the fcn on the spot ***
        ## sapply: Same as lapply, but try to simplify the result
                ## If result is a list where each element is length 1, a VECTOR is returned
                ## If result is a list where each element is a vector of the
                ## same  length, sapply will return a MATRIX
        ## apply: Apply a fcn over the margins of an array
                ## To the rows or columns of a matrix
                ## Not really faster than using a loop, just cool for one line
                ## Array = vector with dimensions attached to it
                ## apply(X is an array, MARGIN = 1 for row, 2  for column, FCN to apply)
                        ## Preserve the rows and collapse the  columns (margin = 1)
                ## rowSums, rowMeans, colSums, colMeans for MATRICES
        ## tapply: Apply a fcn over subsets of a vector (table apply)
                ## (X is a vector, INDEX = factor, FCN to apply, ..., simplify - TRUE)
        ## mapply: Multivariate version of lapply ***
