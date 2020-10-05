## i made two functions one that take matrix and create structure that can save the cache of it's inverse it returns 
## a list of functions that can set and get the cache and the matrix and second one check if
## the given matrix has cache if it has one it returns it if not it inverse it and cache the result
## and return it

## take matrix and create structure that can save the cache of it's inverse it returns 
## a list of functions that can set and get the cache and the matrix

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


##inverse the matrix given by the first function if it does not contain cache 
## if it contain cache it returns it directly

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
