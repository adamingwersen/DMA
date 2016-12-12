# Create a less-computationally heavy method for calculating permutations.
permute = function(n, r){
  if(r == 1){
    n <- n
  } else {
      for(i in (n-r+1):(n-1))
        n <- n*i
  }
  return(n)
}

# Define probability-function, p(n)
prob = function(n, r){
  (permute(n, r)/(n^r))
}

# Define arrays necessary for plot:
n = 1:100
probs = c()

for(i in n){
  probs[i] <- prob(500, i)
}
# Coerce into dataframe
probs_n = data.frame(cbind(n, probs))

# Find integer closest to 0.5
max(which(probs_n$probs >= 0.5))
  # Output: 26


# Load packages for plotting
pkgs <- c("ggplot2", "ggthemes")
lapply(pkgs, require, character.only = TRUE)

# Plot probs_n:
plot <- ggplot(data = probs_n, aes(x = n, y = probs))
plot <- plot + geom_point() + theme_gdocs() + 
  geom_hline(yintercept = 0.5, color = 'red') +
  geom_vline(xintercept = 26, color = 'red') +
  annotate('text', x = 26, y = 0.5, parse = TRUE, label = "26")
  labs(x = "n", y = "p(n)", 
       title = "Ssh. for ingen kollision som fkt. af n") +
  theme(plot.title = element_text(hjust = 0.5))
plot(plot)






