





## makeCacheMatrix accepts a matrix.  It creates two other functions to be used by cacheSolve function
makeCacheMatrix <- function(x = matrix()) {
      	i <- NULL
	set <- function(y) {
	  x <<- y
          i <<- NULL
     }
## Assigns the function to get. Similar to function def?

## Get was used in the template however get is also an R function. 
## In this case the job of get is to retreive 

    get <- function() x  
   
    
## Setting solve as the setinverse function
    setinverse <- function(solve) i <<- solve  

## Assigns the function to getinverse. Similar to function def?
    getinverse <- function() i  

## According to the R docs, list checks or validates a list without evaluating the data inside?
    list(set = set, get = get,       
        setinverse = setinverse,
        getinverse = getinverse) 

}





## cacheSolve accepts a matrix. calls one of two functions from makeCacheMatrix
## if the matrix has NOT been inversed, it is inversed and cached (setinverse)
## if the matrix has already been inversed, the cached data is returned (getinverse)
## determined by testing if i is a null value.
cacheSolve <- function(x, ...) {
      i <- x$getinverse()
      if(!is.null(i)) {
                 message("getting cached data")
                 return(i)
      }
      data <- x$get()
      i <- solve(data, ...)
      x$setinverse(i)
      i ## Returns a matrix that is the inverse of 'x'
        
}








