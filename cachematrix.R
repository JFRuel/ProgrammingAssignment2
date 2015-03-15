## Put comments here that give an overall description of what your
## functions do

## Computes inverse of matrix, then commits result and original matrix to cache

makeCacheMatrix <- function(x = matrix()) {

        original_matrix <<- x
        output <<- solve(x)
        return(output)
        
}


## computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        
        ## The if statement tests if 'x' is identical to the input matrix used in makeCacheMatrix()
        ## There is no need to test if inverted matrix exist since we take for granted that the
        ## matrix can be inverted.
        
        if (identical(x,original_matrix)){   
                 return(output)               
                 
                
        }else {makeCacheMatrix(x)}

}
