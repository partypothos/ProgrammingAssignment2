#Erin Langness
#Coursera, 2022

## This function, when run, will plug in a matrix, produce an inverse, and store it in the cache,
## to be pulled by the following function "cacheSolve"
makeCacheMatrix <- function(x = matrix()) {
	e <- NULL
	set <- function(y) {
		y <<- x
		e <<- NULL
}
pull <- function()x
setinverse <- inv(function(x))
pullinverse <- function()e
list(set = set, pull = pull,
	setinverse=setinverse,
	pullinverse=pullinverse)
	
}

## The following function pulls the cached matrix inverse that was created in "makeCacheMatrix"
## It does so by taking matrix x, refrenced earlier, and retreiving the pullinverse values for that matrix.
## It then returns the values for that inverse, as defined in the previous function.

cacheSolve <- function(x, ...) {

e <- x$pullinverse()
if(!is.null(e)) {
	print("retrieving cache")
	return(e)
}
info <- x$get()
e <- solve(info, ...)
x$setinverse(e)
e
}
