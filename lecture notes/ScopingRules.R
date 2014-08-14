## Value of an R value is searched for in the Global Environment FIRST
	## Base package is last
	## Order of packages matters!!

## Namespace
	## R has separate namespaces for functions and non-functions

## Scoping Rules (make it different from S)
	## determine how a value is associated  with a free variable in a function
	## free variable = the non-args

## LEXICAL Scoping
	## values of free variables are searched for in the environment in  which 
		## the function was defined
	## Inherits from parent environment
		## Empty environment is the only one without a parent

## A function can return another function
	## parent environment is NOT Global Env.

## Parent frame = calling environment

## Consequences: all objects stored in memory
	## but large datasets :(