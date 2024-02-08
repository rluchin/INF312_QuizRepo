# Load ggplot2 library
library(ggplot2)

###SIMULATION###

set.seed(42) # For reproducibility

# Number of friends
n_friends <- 20

# Simulating heights measured by Edward, Hugo, and Lucy
heights_edward <- rnorm(n_friends, mean=170, sd=1)
heights_hugo <- rnorm(n_friends, mean=172, sd=2)
heights_lucy <- rnorm(n_friends, mean=169, sd=3)

# Combining the measurements into a single data frame
friends <- rep(1:n_friends, times=3)
measured_by <- factor(rep(c("Edward", "Hugo", "Lucy"), each=n_friends))
heights <- c(heights_edward, heights_hugo, heights_lucy)

sim_data <- data.frame(FriendID=friends, MeasuredBy=measured_by, Height=heights)

# Create the histogram
ggplot(sim_data, aes(x=Height, fill=MeasuredBy)) +
  geom_histogram(position="dodge", binwidth=2) +
  theme_minimal() +
  labs(title="Distribution of Heights Measured by Edward, Hugo, and Lucy",
       x="Height (cm)",
       y="Count") +
  scale_fill_brewer(palette="Pastel1") +
  theme(legend.title=element_blank())


###This code does not seem to work despite 30 minutes of troubleshooting. It looks like it should work, so I'm submitting anyways. Hopefully you have more luck.
