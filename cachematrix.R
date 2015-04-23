## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# this function works like a class, it creates a list of functions: set, get, setCache and getCache. 

  makeCacheMatrix <- function(x = matrix()) {

      xCache <- NULL
      set <- function(y) {
	  x <<- y
	  xCache <<- NULL 
	  }

      get <- function() x 
      setCache <- function(var) xCache <<- var
      getCache <- function() xCache

      list(set = set, get = get,
	       setCache = setCache,
	       getCache = getCache)
  }

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      m <- x$getCache() 
     if(!is.null(m)) { 
	  message("getting cached data")
	  return(m) 
      }
      data <- x$get()       
      m <- solve(data) 
      x$setCache(m) 
      m   
}
