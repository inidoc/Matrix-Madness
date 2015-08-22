## makeCacheMatrix sets the solution to NULL, and gets a matrix.
## It solves the matrix and stores the result in solution.

## 

makeCacheMatrix <- function(x = matrix()) {
      solution <<- NULL
      set <- function(y) {
        x <<- y
        solution <<- NULL
      }
      get <- function() x
      getsolve <- function(x){
          solution <<- solve(x)
          return (solution)}
        
      list(set = set, get = get,
           getsolve = getsolve)

}


## cacheSolve checks to see if the matrix has been solved
## and solves it if it hasn't already been solved
## and finally prints out the solution

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- solution
  
  
  if(!is.null(m)){
        message ("getting cached data")
        return(solution)
        
      } else {
            solvedmatrix <- solve(x)
            return (solvedmatrix)
  }
}
