## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# create a matrix object that caches its inverse
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
}
get<- function(){
    m
}

# inverse the matrix
setInverse<-function(inverse){
    i<<-inverse
}


# get the inverse of the matrix
    getInverse <- function() {
        ## Return the inverse property
        i
    }

# list the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getInverse()

        if( !is.null(m)){
        message("getting cached data")
        return(m)
        }
        ## Get the matrix
        data <- x$get()
        ## calculate the inverse with solve function
        m<-solve(data)%*% data
        ## Set the getInverse
        x$setInverse(m)
        m
        }
