require("stats4")

data <- c(225, 171, 198, 189, 189, 135, 162, 135, 117, 162)

# The log likelihood function
# negativeLogLikelihood <- function(theta) {
#   n <- length(data)
#   sum <- -n * log(theta) - sum(data) / theta
#   return(-sum)
# }

negativeLogLikelihood <- function(theta) {
  xMinusThetaSquared = (data - theta)^2
  sumTing <- sum(-log(1 + (data - theta)^2)) 
  return (-sumTing)
}

# Plot 
# curve(negativeLogLikelihood, 150, 200)
# curve(negativeLogLikelihood, 0, 300)

# If we initialize at 150:
fit <- mle(negativeLogLikelihood, start = list(theta = 150), method = "L-BFGS-B")
print(summary(fit))

# If we initialize at 200:
fit <- mle(negativeLogLikelihood, start = list(theta = 200), method = "L-BFGS-B")
print(summary(fit))
