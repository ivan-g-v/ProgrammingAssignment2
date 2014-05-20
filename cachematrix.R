## Put comments here that give an overall description of what your
## functions do

## In this file I have two functions. With these two functions I 
## try to obtain the inverse matrix of a square matrix that 
## somebody write

## Write a short comment describing this function

## In this first function it creates a special "matrix", which 
## is really a list containing a function to
## set the value of the vector
## get the value of the vector
## set the value of the mean
## get the value of the mean

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(mean) m <<- mean
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

## In this function I use function solve for obtain
## the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## First I check if I have the inverse of the matrix
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        ## Return a matrix that is the inverse of 'x'
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
}
