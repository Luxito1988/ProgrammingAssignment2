## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(mat = matrix()) {
  
        inv <- NULL
        set <- function(y) {
          mat <<- y
          inv <<- NULL
        }
        get <- function() mat
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(mat, ...) {
  
          ## Return a matrix that is the inverse of 'mat'
          inv <- mat$getInverse()
          if (!is.null(inv)) {
            message("Obteniendo data de Caché")
            return(inv)
          }
          matriz <- mat$get()
          inv <- solve(matriz, ...)
          mat$setInverse(inv)
          inv
}
