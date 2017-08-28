#This function is used to generate a matrix with an inverse matrix
    makeCacheMatrix<-function(x=matrix()){
    m<-NULL  #M is the internal variable used to store x
    set<-function(y){
    x<<-y
    m<<-NULL
  }
}
    get<-function() x
    setinverse<-function(inverse) inver<<-inverse
    getinverse<-function() inver
    list(set=set,get=get,
         setinverse=setinverse,
         getinverse=getinverse)

#This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
#If the inverse has already been calculated (and the matrix has not changed), 
#then the cachesolve should retrieve the inverse from the cache.

    cacheSolve<-function(x,...){
    m<-x$getinverse()  #see if the inverse of x was computed before
    if(!is.null(m)) {
    message("getting cached data")
    return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    m
  }
}