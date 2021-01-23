## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## <<- is assigning 'local' meaning to the variable in the function
## Set value of a matrix
## Get value of matrix
## Set value of inverse
## Get inverse
makeCacheMatrix <- function(x = matrix()) {
        a <- NULL
        set <- function(y) {
                x <<- y
                a <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) a <<- inverse
        getinverse <- function() a
        list(set = set, get = get, 
             setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
##THe below function gets the inverse of a matrix, but
##first checks to see if the inverse was already calculated and cached

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        a <-x$getinverse()
        if(!is.null(a)) {
                message("getting chached data")
                return(a)
        }
        data <- x$get()
        a <-solve(data, ...)
        x$setinverse(a)
        a
}
