
age_data <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)


mean_age <- mean(age_data)
median_age <- median(age_data)


mode_result <- table(age_data)
modes <- as.numeric(names(mode_result[mode_result == max(mode_result)]))
modality <- length(modes)


midrange <- (max(age_data) + min(age_data)) / 2


q1 <- quantile(age_data, 0.25)
q3 <- quantile(age_data, 0.75)


cat("Mean:", mean_age, "\n")
cat("Median:", median_age, "\n")
cat("Mode(s):", modes, "\n")
cat("Modality:", modality, "\n")
cat("Midrange:", midrange, "\n")
cat("First Quartile (Q1):", q1, "\n")
cat("Third Quartile (Q3):", q3, "\n")
