## Put comments here that give an overall description of what your
## functions do

## A function to calculate the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(mat){
		x   <- mat
		inv <- NULL
	}
	
	get <- function() x
	
	setinv <- function(mat){
		solve(mat)
	}
	getinv <- function() inv

	list(set=set ,get=get, setinv = setinv ,getinv=getinv)
}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getinv()
	
	if (!is.null(inv)){
		message("Inv Equals: ")
		return(inv)
	}
	
	mat <- x$get()
	inv <- x$setinv(mat)
	inv
}
