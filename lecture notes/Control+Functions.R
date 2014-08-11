#CONTROL STRUCTURES 8/11/14

> #For flow: 
  >     #if/else
  >     #for, while, repeat, next
  >     #return
  > # if(<condition>) {}
  > # else if(<condition2>) {}
  > # else {}
  > if(x > 3) {
          y <-  10
  } else {
          y <- 0
  }

> OR
  > y <- if(x > 3) {10} else {0}

> #In the second, y <- the entire if/else construct. 
  > #This is important for readability-- now you know it's all about y

## for loops
  > # for(i in 1:10) {print(i)}
  > # ? Their lines break after the "{" and close "}" on a new line. I don't think it affects functionality, but it might be more readable that way. How can you do this in RStudio?
  > # fcn note: seq_along(x) makes a numeric sequence the length of the x vector/list
  > #If a  for loop only has a single expression, you can omit the {}:
  > #for(i in seq_along(x)) print(i)
  > #correction: for(i in seq_along(x)) print(x[i])
 

## while loops
  > #While loops begin by testing a condition.
  > #Makes things easy to read sometimes-- know when your loop wants to end. **Need to make sure the condition will be met!!
  > #Conditions evaluated from left to right.
  
 
  > #The only way to exit a repeat loop is to call "break".
  > #Repeat loops create an infinite loop.
  > #Better to set a hard limit (for loop) on the num of iterations, and then see if convergence was achieved.
 
  
  > #next is used to skip an iteration of a loop:
  > ## for(i in 1:100) {if(i < 20) {next}} ---> to skip the first 20 iterations

  
  
  
  
  
#FUNCTIONS
  > ##Have named arguments that could have default values.
  > formals(matrix)
$data
[1] NA

$nrow
[1] 1

$ncol
[1] 1

$byrow
[1] FALSE

$dimnames
NULL

# Don't nec. need to define all args.
# When you  name the args, the order doesn't matter...functionally.
# Argument Matching: 1) R looks for an exact match, then 2) a partial match, then 3) a positional match.
You can also set an arg to NULL.
## Lazy  Evaluation: args to a fcn are evaluated only as they're needed.
## f <- function(a, b) {a^2}. Calling f(2) won't throw an error cause the function never actually uses b.
## ? the "..." argument. Passing args to other functions?
## If you don't know how many args will be passed to your fcn.
## ARGS AFTER the ... HAVE to be named explicitly and CAN'T be partially matched.
  


Fcn returns whatever the last expression was.