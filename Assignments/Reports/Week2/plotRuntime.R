fun1 <- function(x) x^2
fun2 <- function(x) (x*(x-1)^2)/2
fun3 <- function(x) x*log2(x)
x<-seq(0,4*pi,0.01)

data <- cbind(fun1(x), fun2(x), fun3(x))

matplot(x, data, type = 'l', 
	col = c("#ff0000", "#00008b", "#31720a"),
	ylab = "Køretid", xlab = "n")
legend("topright", inset = .05, 
	legend = c("(n-1)²", "(n(n-1)²)/2", "n(log(n))"),
    pch = 1, 
    col = c("#ff0000", "#00008b", "#31720a"), horiz = TRUE)
title("Sammenligning af køretider")

