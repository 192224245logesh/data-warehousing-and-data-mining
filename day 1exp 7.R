
pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)


mean_value <- mean(pencils)

median_value <- median(pencils)


get_mode <- function(x) {
  ux <- unique(x)
  tab <- tabulate(match(x, ux))
  ux[tab == max(tab)]
}

mode_value <- get_mode(pencils)


cat("Mean: ", mean_value, "\n")
cat("Median: ", median_value, "\n")
cat("Mode: ", mode_value, "\n")
