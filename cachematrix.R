## Caching the Inverse of a Matrix
## Program follows and alters "Caching the Mean of a Vector" with similar functions


## creates four functions within a function
## set() which can change the matrix
## get() which retrieves the inputed matrix
## setinverse() which assigns a value to the variable i in a different environment
## getinverse() which retrieves the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  get <- function() x
  setinverse <- function(Inverse) i <<- Inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
} 

## Checks to see if the inverse is cached, returning a "getting cached matrix" if not.  If not, the inverse is calculated and cached.

cacheSolve <- function(x, ...) {
  i = x$getinverse()
  
  if(!is.null(i)) {
    message("getting cached matrix")
    return(i)
  }
  
  mat <- x$get()
  i <- solve(mat)
  x$setinverse(i)
  i
  
}

