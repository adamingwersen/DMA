fun1 <- function(x) x^2
fun2 <- function(x) (x*(x-1)^2)/2
x<-seq(0,4*pi,0.01)
matplot(x, cbind(fun1(x), fun2(x)),
        type = "l", col = c("blue", "red"), 
        ylab = "Runtime", xlab = "n")
legend("bottomright", inset = .05, legend = c("n²", "(n(n-1)²)/2"), pch = 1, col = c(2,4), horiz = T)
