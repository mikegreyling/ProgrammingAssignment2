## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(mat = matrix()) {
  minv <- NULL
  set <- function(y) {
    mat <<- y
    minv <<- NULL
  }
  get <- function() mat
  setminv <- function(minv) minv <<- minv
  getminv <- function() minv
  list(set = set, get = get,
       setminv = setminv,
       getminv = getminv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  minv <- x$getminv()
  if(!is.null(minv)) {
    message("getting cached data")
    return(minv)
  }
  data <- x$get()
  minv <- solve(data, ...)
  x$setminv(minv)
  
}
