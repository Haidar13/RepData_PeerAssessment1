data <- read.csv('activity.csv')
# remove NA
cleaned_data <- na.omit(data)
# remove 0s 
cleaned_data <- cleaned_data[apply(cleaned_data !=0,1,all ),]
# change to date
cleaned_data$date <- as.Date(cleaned_data$date)
# get the sum of steps per day
steps_per_day <- aggregate(cleaned_data$steps, by=list(cleaned_data$date), sum)
