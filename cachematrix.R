
## the functions check to make sure the inputted matrix is invertible, then create it, then check to see if the inverse has been cached, and if not calculate the inverse

## checks if the matrix can be inverted, then makes the invertible matrix object along with defining the different functions that will be used on the object, also defines the placeholder for the inverse value
makeCacheMatrix <- function(x = matrix()) {
 

  inverse <- NULL
get <- function(){
  x
}
set <- function(y){
  x<<-y
  inverse <<- NULL
}

getinverse <- function(){
  inverse
}
setinverse <- function(inv){
  inverse <<- inv
}
list(get = get, set = set, getinverse = getinverse, setinverse = setinverse)
}




## Write a short comment describing this function
## checks if inverse has been cached, if not it calculates, caches, and returns it. If it's been cached and the matrix hasn't changed, returns the cached inverse
cacheSolve <- function(x, ...) {
  inverse <- x$getinverse()
  if(!is.null(inverse)){
    print("Retrieving cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setinverse(inverse)
  return(inverse)

}
