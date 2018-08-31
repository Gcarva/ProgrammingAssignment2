## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  xi <- NULL
  set <- function(y) {
    x <<- y
    xi <<- NULL
  }
  get <- function() x
  setInvert <- function(invert) xi <<- invert
  getInvert <- function() xi
  list(set = set, get = get,
       setInvert = setInvert,
       getInvert = getInvert)
}


## This does the same as the example code - simply sets and gets the values. All references to mean replaced with invert for "clarity"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  xi <- x$getInvert()
  if(!is.null(xi)) {
    message("getting cached data")
    return(xi)
  }
  data <- x$get()
  xi <- solve(data)
  x$setInvert(xi)
  xi
  }
