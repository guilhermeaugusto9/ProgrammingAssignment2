## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#### This first function donwbellow allows to create an special type of matrix called by me as matx, an then make that matx as inverse and
### store this matx in the cache for use in the other funcion called cache solve

makeCacheMatrix <- function(x = matrix()) {
        inversed <- NULL
        set <- function(x) {
                matx <<- x;
                inverse <<- NULL;
        }
        get <- function() return(matx);
        setinv <- function(inv) inverse <<- inv;
        getinv <- function() return(inverse);
        return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}

makeCacheMatrix
## Write a short comment describing this function

### this funcion called cacheSolve  retrive inverse of the cache if the MakeCacheMatrix was alread ran, so for the funcion runs proprety you shold run makeCacheMatrix and then cacheSolve

cacheSolve <- function(x, ...) {
        inversed <- matx$getinv()
        if(!is.null(inverse)) {
                message("Get cache data stored...")
                return(inversed)
        }
        dat <- matx$get()
        invsersed <- solve(dat, ...)
        matx$setinv(inversed)
        return(inversed)
}
cacheSolve