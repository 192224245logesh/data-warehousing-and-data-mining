# Input data
age <- c(23, 23, 27, 27, 39, 41, 47, 49, 52, 54, 54, 56, 57, 58, 58, 61)
fat <- c(9.5, 26.5, 7.8, 17.8, 31.4, 25.9, 27.4, 27.2, 34.6, 42.5, 28.8, 33.4, 30.2, 34.1, 32.9, 35.7)

# (a) Calculate the mean, median, and standard deviation of age and %fat.
mean_age <- mean(age)
median_age <- median(age)
sd_age <- sd(age)

mean_fat <- mean(fat)
median_fat <- median(fat)
sd_fat <- sd(fat)

# Print the results
print(paste("Mean of age: ", mean_age))
print(paste("Median of age: ", median_age))
print(paste("Standard deviation of age: ", sd_age))

print(paste("Mean of %fat: ", mean_fat))
print(paste("Median of %fat: ", median_fat))
print(paste("Standard deviation of %fat: ", sd_fat))

# (b) Draw the boxplots for age and %fat.
boxplot(age, main="Boxplot of Age")
boxplot(fat, main="Boxplot of %Fat")

# (c) Draw a scatter plot and a q-q plot based on these two variables.
plot(age, fat, main="Scatter Plot of Age vs %Fat", xlab="Age", ylab="%Fat")
qqplot(age, fat, main="Q-Q Plot of Age vs %Fat", xlab="Age", ylab="%Fat")