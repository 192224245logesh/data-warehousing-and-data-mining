
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)


bin_mean_smooth <- function(x, bin_size) {
  n <- length(x)
  smoothed_data <- numeric(0)
  
  for (i in seq(1, n, bin_size)) {
    bin <- x[i:min(i + bin_size - 1, n)]
    mean_value <- mean(bin)
    smoothed_data <- c(smoothed_data, rep(mean_value, length(bin)))
  }
  
  return(smoothed_data)
}


bin_median_smooth <- function(x, bin_size) {
  n <- length(x)
  smoothed_data <- numeric(0)
  
  for (i in seq(1, n, bin_size)) {
    bin <- x[i:min(i + bin_size - 1, n)]
    median_value <- median(bin)
    smoothed_data <- c(smoothed_data, rep(median_value, length(bin)))
  }
  
  return(smoothed_data)
}


bin_boundaries_smooth <- function(x, bin_size) {
  n <- length(x)
  smoothed_data <- numeric(0)
  
  for (i in seq(1, n, bin_size)) {
    bin <- x[i:min(i + bin_size - 1, n)]
    min_value <- min(bin)
    max_value <- max(bin)
    smoothed_data <- c(smoothed_data, rep(c(min_value, max_value), length(bin)))
  }
  
  return(smoothed_data)
}


bin_size <- 3


smoothed_mean <- bin_mean_smooth(data, bin_size)
smoothed_median <- bin_median_smooth(data, bin_size)
smoothed_boundaries <- bin_boundaries_smooth(data, bin_size)


cat("Original Data:", data, "\n\n")
cat("Smoothed by Bin Mean:", smoothed_mean, "\n")
cat("Smoothed by Bin Median:", smoothed_median, "\n")
cat("Smoothed by Bin Boundaries:", smoothed_boundaries, "\n")
