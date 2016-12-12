# Faculty function
fakultet <- function(n) {
  if(n <= 1) {
    return(1)
  } else { 
    return(n * fakultet(n-1))
  }
}
  # Call via e.g. fakultet(10)

# Permutation
permutation = function(n, r){
  for(i in (n-r+1):(n-1))
    if(i <= n){
    n <- n*i
    } else {return(1*n)}
  return(n)
}

  # Call via e.g. permutation(10, 5)

permutation(10,6)
# Probability

p_func = function(x, r){
  perm(x, r)/(x^r)
}

p_func(10, 2)

store <- c()
store2 <- c()

for(i in 1:100){
  store[i] <- p_func(500, i)
  store2[i] <- i
}

star <- cbind(store, store2)


perm = function(n, x) {
  return(factorial(n) / factorial(n-x))
}








# Run for n = 1...100

# Plot