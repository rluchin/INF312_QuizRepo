###SIMULATION###

set.seed(42) # For reproducibility

# Number of friends
n_friends <- 20

# Simulating heights measured by Edward, Hugo, and Lucy
heights_edward <- rnorm(n_friends, mean=170, sd=1)
heights_hugo <- rnorm(n_friends, mean=172, sd=2)
heights_lucy <- rnorm(n_friends, mean=169, sd=3)

# Combining the measurements into a single data frame
friend_ids <- rep(1:n_friends, times=3)
measured_by <- factor(rep(c("Edward", "Hugo", "Lucy"), each=n_friends))
heights <- c(heights_edward, heights_hugo, heights_lucy)

data <- data.frame(FriendID=friend_ids, MeasuredBy=measured_by, Height=heights)


###TESTS###

#Compare average heights
average_heights <- aggregate(Height ~ MeasuredBy, data, mean)

#Difference between max and min of measurements
range_of_heights <- aggregate(Height ~ MeasuredBy, data, function(x) max(x) - min(x))

#Identify the highest and lowest measurements
max_height <- max(data$Height)
min_height <- min(data$Height)
max_measurer <- data$MeasuredBy[which.max(data$Height)]
min_measurer <- data$MeasuredBy[which.min(data$Height)]


