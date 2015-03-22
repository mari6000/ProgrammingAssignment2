## makeCacheMatrix caches a matrix into a new varible then returns 
## the cached matrix inverted.
## makeCacheMatrix calls internal function cacheSolve to check if the cached matrix is already inverted.
## If it is inverted already the cached matrix will be returned, and if not, then 
## cacheSolve will return the inversion of the cached matrix. 

## makeCacheMatrix takes a matrix as an input (default zero size) and returns
## a cache version of the matrix inversed

makeCacheMatrix <- function(x = matrix()) {
  ## set local variable to null
  m<-NULL
  ## set function reset m to null and allocate
  ## the cached value x whatever the matrix is
  set<-function(y){
    x<<y
    m<<-NULL
  }
  
  ## retuns cached matrix
  get<-function()x
  ## returns the cached inverse matrix 
  setmatrix<-function(solve) m<<-solve
  ## returns cached matrix value
  getmatrix<-function()m
  ## constructs a named list of functions
  list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
 
}


## cacheSolve computes the inverse of a cached matrix returned by makeCacheMatrix
## if the inverse has alreaddy been calculated, cacheSolve will retrieve the inverse from cache 

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  
  
  ## inverse the matrix that is passed in the function
  ## store in new varieable xinverse
  m<-x$getmatrix()
  ##check if already inversed
  if (!is.null(m)){
  
    return(m)
  }
  ## us the get function to get the matrix and allocate to local variable
  matrix<-x$get()
  ## inverse the matrix
  m<-solve(matrix, ...)
  ## call setmatrix to return cachec inverse matrix
  x$setmatrix(m)
  ## return the matrix
  m
}
