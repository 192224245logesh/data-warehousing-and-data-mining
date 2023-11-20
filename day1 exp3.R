data <- c(200, 300, 400, 600, 1000)
min_max_normalize <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}
min_max_normalized_data <- min_max_normalize(data)
z_score_normalize <- function(x) {
  (x - mean(x)) / sd(x)
}
z_score_normalized_data <- z_score_normalize(data)
cat("(a) Min-Max Normalized Data:", min_max_normalized_data, "\n")
cat("(b) Z-Score Normalized Data:", z_score_normalized_data, "\n")

