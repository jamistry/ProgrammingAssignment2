## Put comments here that give an overall description of what your
## functions do
## the functions check to make sure the inputted matrix is invertible, then create it, then check to see if the inverse has been cached, and if not calculate the inverse
## Write a short comment describing this function
## checks if the matrix can be inverted, then makes it along with the inverse placeholder
makeCacheMatrix <- function(x = matrix()) {
 
if(nrow(x)==ncol(x)){  
inverse<<- NULL
 x<<-x
  return(x)
}
else{
  return("Matrix must be square to be invertible")
}
}


## Write a short comment describing this function
## checks if inverse has been cached, if not it calculates, caches, and returns it
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(!is.null(inverse) && inverse == solve(x)){
    print("retrieving cached data")
    return(inverse)
  }
  inverse<<- solve(x)
  return(inverse)
}
