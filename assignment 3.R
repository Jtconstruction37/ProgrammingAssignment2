## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##makeCacheMatrix creates a matrix object that can cahe its inverse (inverted)

makeCacheMatrix <- function(x = MATRIX()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverted <- function(solveMATRIX) inv <<- solveMATRIX
  getInverted <- function() inv
  list(set = set, get = get, setInverted = setInverted, getInverted = getInverted)
}



## Write a short comment describing this function
## cacheSolve chaches the inverted matrix 
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverted()
  if(!is.null(inv)){
    message("getting cached data")
    return(inverted)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverted(inv)
  inv      
}

