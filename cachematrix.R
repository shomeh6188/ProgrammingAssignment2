## Put comments here that give an overall description of what your
## functions do
# 1) makeCacheMatrix - setter and getter for matrix and inverse matrix
# 2) cacheSolve - solves the inverse of n matrix

## Write a short comment describing this function

#The first function, makeCacheMatrix creates a special "matrix", which is really a list containing a function to
#1. Set the value of the Matrix
#2. Get the value of the Matrix
#3. Set the value of the Inverse Matrix
#4. Get the value of the Inverse Matrix

makeCacheMatrix <- function(x = matrix()) {

    invX <- matrix()
    set <- function(y) {
        x <<- y
        invX <<- matrix()
    }
    get <- function() x
    setinverse <- function(inverseX) invX <<- inverseX
    getinverse <- function() invX
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function

#The following function calculates the inverse of the special "matrix" created with the above function. However, it first checks to see if the inverse has already been calculated. If  so, it gets the inverse from the cache and skips the computation. Otherwise, it calculates the inverse of the data and sets the value of the inverse in the cache via the setinverse function.
#
cacheSolve <- function(x, ...) {
      invX <- x$getinverse()
   if(!identical(mat_inv, matrix())){
        message("getting cached data")
        return(invX)
    }
    data <- x$get()
    invX <- solve(data)
    x$setinverse(invX)
    invX
}
