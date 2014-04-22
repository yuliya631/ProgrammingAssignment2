## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# <<- is assigning 'local' meaning to the variable in the function
makeCacheMatrix <- function(x = matrix()) {
        
get <- function() x
setinverse <- function(inverse) i <<- inverse
getinverse <- function() i
list(set = set, 
     get = get, 
     setinverse = setinverse
     getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
