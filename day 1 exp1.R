
intervals <- c(1, 5, 15, 20, 50, 80, 110)
frequencies <- c(200, 450, 300, 1500, 700, 44)


cumulative_freq <- cumsum(frequencies)


total_freq <- sum(frequencies)
median_interval <- which(cumulative_freq >= total_freq / 2)[1]


lower_bound <- intervals[median_interval - 1]
upper_bound <- intervals[median_interval]
lower_cumulative_freq <- cumulative_freq[median_interval - 1]
median_freq <- frequencies[median_interval]
approx_median <- lower_bound + ((total_freq / 2 - lower_cumulative_freq) / median_freq) * (upper_bound - lower_bound)


cat("Approximate Median:", approx_median, "\n")

