## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  #set and get the value of the matrix
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
 
  get <- function() x
  
 #set the value of the inverse 
 
  setinverse <- function(solve) m <<- inverse
 
 #get the value of inverse and storage 

 getinverse <- function() m
 
 list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
#check if matrix inverse has been calculated
  
if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
 #if not in cache call function to calculate and storage 
 #in cache
  data <- x$get()
  m <- inverse(data, ...)
  x$setinverse(m)
  m      
  ## Return a matrix that is the inverse of 'x'

}
