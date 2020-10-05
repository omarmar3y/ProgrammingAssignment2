## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cache <- NULL
  set <- function(y){
    x <<- y
    cache <<- NULL
  }
  get <- function() x
  
  setcache <- function(c) cache <<- c
  getcache <- function() cache
  list(set = set, get = get , getcache = getcache,setcache = setcache)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  cache <- x$getcache()
  if(!is.na(cache)){
    print('get cached matrix')
    return(cache)
  }
  data <- solve(x$get())
  x$setcache(data)
  data
  
  ## Return a matrix that is the inverse of 'x'
}
