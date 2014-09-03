## The str Fcn (shows you what' in an object/the strcture of the obj)

## Simulations: 
        ## Generating random numbers: Probability distributions
        ## (Probability distr. fcns usually have 4 fcns associated with them)
                ## rnorm: generates random Normal variates with a given mean and SD
                        ## r for random num gen
                ## dnorm: evaluate the Normal probability density (w/ given mean + SD) at a point(s)
                        ## d for density
                ## pnorm: evaluate the cumulative distribution fcn for a Normal distribution
                        ## p for cumulative distribution
                ## rpois: gen rand Poisson variates w/ given rate
                        ## rpois, dpois, ppois, qpois (quantile fcn)
                ## All require input of mean and sd, otherwise mean = 0 and sd = 1se

## system.time(): takes an arbitrary R expression as input, evaluates it, and 
## tells you the amt time it took to evaluate that expression
        ## Time is seconds
        ## Returns an object of class 'proc_time'
                ## user time: time charged to CPU for this expression
                ## elapsed time: time that user experiences
        ## DO NOT use system.time() and Rprof() together!

## Rprof() keeps track of the fcn call stack at regular intervals and tabulates how much time is 
## being spent in each fcn
        ## Default sampling interval is 0.02s
        ## If code is faster than 0.02, there's really no point
        ## Prints:
                ## Fcn called fcn to the left, so on...
                ## Not easy to read, use summaryRprof() to find how many secs spent in each section
        ## Two methods to normalize the data
                ## by.total: time spent in each fcn / total run time
                ## by.self: 
                ## (time spent in each fcn - time spent in fcns above in the call stack) / total run time