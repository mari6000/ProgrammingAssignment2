## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix takes a matrix as an input (default zero size) and returns
## a cache version of the matrix inversed

makeCacheMatrix <- function(x = matrix()) {
  
  ## 
  xcache << x
cachesolve(xcache)
xcache

}


## cacheSolve computes the inverse of a cached matrix returned by makeCacheMatrix
## if the inverse has alreaddy been calculated, cacheSolve will retrieve the inverse from cache 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  
  ## inverse the matrix that is passed in the function
  ## store in new varieable xinverse
  
  xinverse <- solve(x)
  
  xinverse
}
