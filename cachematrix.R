# this function creat a list of functions to set,get, matrix and set,get the inverse 
makeCacheMatrix <- function(x = matrix()) {
        
     
        inv <- NULL
        set <-function(y) {
                
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) inv <<- inverse 
        getinv <- function() inv
        list(set=set, get=get, setinv=setinv, getinv=getinv)


}


## return a matrix that is the inverse of "x" reading from cache if it's calready calculated

cacheSolve <- function(x, ...) {
        
        inv <- x$getinv()
        
        
        if (!is.null(inv)){
                # 
                message("getting cached data")
                return(inv)
        }
        
        
        mat.data <- x$get()
        inv <- solve(mat.data, ...)
        
      
        x$setinv(inv)
        
        return(inv)
}
