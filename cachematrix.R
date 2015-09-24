## makeCacheMatrix() is a function that caches the inputs for a matrix and the inverse of that matrix

makeCacheMatrix <- function(x = matrix()) { ## Sets makeCacheMatrix as a function of the matrix, x
  inv <- NULL ## creates object inv and sets the object to default value of NULL
  set <- function(y) { ## creates object set and sets the object as a function of free variable y
    x <<- y ## sets the value of the matrix in the parent function equal to the object called in fuction "set"
    inv <<- NULL ## re-sets object "inv" to NULL when the function SET is called
  }
  get <- function() x ## returns the value of the matrix that was input as the matrix, x
  setinverse <- function(inverse) inv <<- inverse ##creates object which sets input, "inverse," as the inverse of the matrix, x
  getinverse <- function() inv ## creates object which returns the value that was cached as the inverse of the matrix, x
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse) ## caches four objects, set, get, setinverse, get inverse
}

## cacheSolve checks whether the variable getinverse has a value associated with it, and if not,
## solves for and returns the inverse of the matrix

cacheSolve <- function(x, ...) { ## creates object cacheSolve, and sets it as a function of x
  inv <- x$getinverse() ## creates object inv, and sets it to the value of function, getinverse from cachematrix.R
  if(!is.null(inv)) { ## checks if object inv is not NULL
    message("Getting cached data") ## if object inv is not NULL, delivers words "Getting cached data"
    return(inv) ## returns value of inv
  }
