age_value <- 35
std_dev_age <- 12.94
min_age<-15
max_age<-38
mean_age<-8
m1<- (age_value - min_age) / (max_age - min_age)
m1
m2<- (age_value - mean_age) / std_dev_age
m2
m3<- age_value / (10 ^ (ceiling(log10(age_value))))
m3