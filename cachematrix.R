## Below are two functions that create an object that stores a
## matrix and cache's its inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  z <-NULL
  set <- function(y) {
    x <<- y
    z <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function () m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  z <- x$getinv()
  if(!is.null(z)) {
    message("getting cached data")
    return(z)
  }
  data <- x$get()
  z <- solve(data, ...)
  x$setinv(z)
  z
  ## Return a matrix that is the inverse of 'x'
}
