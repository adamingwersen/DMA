fib  <- function(n)
{
  if (length(n) > 1) return(sapply(n, fib))
  if (n == 1) return(1)
  if (n == 2) return(1)
  return(fib(n-1)+fib(n-2)) 
}

n <- c(1:29)
fibn <- fib(1:29)

par(mfrow=c(2,1))
matplot(n, fibn, type = 'c', 
        col = c("#ff0000"),
        ylab = "F(n)", xlab = "n")
title("Fibonacci-sekvensen")
matplot(n, log2(fibn), type = 'c', 
        col = c("#0000ff"),
        ylab = "log(F(n))", xlab = "n")
title("log2 til Fibonacci-sekvensen")