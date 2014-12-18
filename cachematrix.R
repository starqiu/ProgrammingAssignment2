## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  solve <- NULL
  
  set <- function(y){
    x <<- y
    solve <<-NULL
  }
  
  get <-function() x
  
  setsolve <- function(slv) solve <<- slv
  
  getsolve <- function() solve
  
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  slv <- x$getsolve()
  if(!is.null(slv)) {
    message("getting cached data")
    return(slv)
  }
  data <- x$get()
  slv <- solve(data, ...)
  x$setsolve(slv)
  slv
}
