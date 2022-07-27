# data manipulated
#renamed a wrong named column in july month data
july.ride.data <- rename(july.ride.data,week_day = weekday)

# extracted new column (month name) from dates
install.packages("lubridate")
library(lubridate)
month1 <-lubridate::month(jan.ride.data$started_at,label = TRUE,abbr = FALSE)
month2 <-lubridate::month(february_ride_data$started_at,label = TRUE,abbr = FALSE)
month3 <-lubridate::month(march_ride_data$started_at,label = TRUE,abbr = FALSE)
month4 <-lubridate::month(april_ride_data$started_at,label = TRUE,abbr = FALSE)
month5 <-lubridate::month(may.ride.data$started_at,label = TRUE,abbr = FALSE)
month6 <-lubridate::month(june_ride_data$started_at,label = TRUE,abbr = FALSE)
month7 <-lubridate::month(july.ride.data$started_at,label = TRUE,abbr = FALSE)
month8 <-lubridate::month(august_ride_data$started_at,label = TRUE,abbr = FALSE)
month9 <-lubridate::month(september_ride_data$started_at,label = TRUE,abbr = FALSE)
month10 <-lubridate::month(october_ride_data$started_at,label = TRUE,abbr = FALSE)
month11 <-lubridate::month(november_ride$started_at,label = TRUE,abbr = FALSE)
month12 <-lubridate::month(december_ride_data$started_at,label = TRUE,abbr = FALSE)
library(dplyr)
jan.ride.data <-jan.ride.data %>% mutate(month = month1)
february_ride_data <-february_ride_data %>% mutate(month = month2)
march_ride_data <-march_ride_data %>% mutate(month = month3)
april_ride_data <-april_ride_data %>% mutate(month = month4)
may.ride.data <-may.ride.data %>% mutate(month = month5)
june_ride_data <-june_ride_data %>% mutate(month = month6)
july.ride.data <-july.ride.data %>% mutate(month = month7)
august_ride_data <-august_ride_data %>% mutate(month = month8)
september_ride_data <-september_ride_data %>% mutate(month = month9)
october_ride_data<-october_ride_data %>% mutate(month = month10)
november_ride <-november_ride %>% mutate(month = month11)
december_ride_data<-december_ride_data %>% mutate(month = month12)

# converting time format ("hrs""min""sec") into "hrs"
#separating hrs,min,sec
library(tidyr)
jan.ride.data <- jan.ride.data %>% separate(ride_length,into = c("hours","minutes","seconds")
,sep = ":", convert = TRUE)
february_ride_data <- february_ride_data %>% separate(ride_length,into = c("hours","minutes","seconds")
,sep = ":", convert = TRUE)
march_ride_data <- march_ride_data %>% separate(ride_length,into = c("hours","minutes","seconds")
 ,sep = ":", convert = TRUE)
april_ride_data <- april_ride_data %>% separate(ride_length,into = c("hours","minutes","seconds")
,sep = ":", convert = TRUE)
may.ride.data <- may.ride.data %>% separate(ride_length,into = c("hours","minutes","seconds")
 ,sep = ":", convert = TRUE)
june_ride_data <- june_ride_data %>% separate(ride_length,into = c("hours","minutes","seconds")
,sep = ":", convert = TRUE)
july.ride.data <- july.ride.data %>% separate(ride_length,into = c("hours","minutes","seconds")
,sep = ":", convert = TRUE)
august_ride_data <- august_ride_data %>% separate(ride_length,into = c("hours","minutes","seconds")
,sep = ":", convert = TRUE)
september_ride_data <- september_ride_data %>% separate(ride_length,into = c("hours","minutes","seconds")
 ,sep = ":", convert = TRUE)
october_ride_data <- october_ride_data %>% separate(ride_length,into = c("hours","minutes","seconds")
,sep = ":", convert = TRUE)
november_ride <- november_ride %>% separate(ride_length,into = c("hours","minutes","seconds")
,sep = ":", convert = TRUE)
december_ride_data <- december_ride_data %>% separate(ride_length,into = c("hours","minutes","seconds")
,sep = ":", convert = TRUE)

#calculating only "hours" from "hrs,min,sec" for each month
jan.ride.data %>% mutate(ride_hrs = as.numeric(hours) + as.numeric(minutes)/60 + as.numeric(seconds)/3600)
february_ride_data %>% mutate(ride_hrs = as.numeric(hours) +as.numeric(minutes)/60 + as.numeric(seconds)/3600)
march_ride_data %>% mutate(ride_hrs = as.numeric(hours) +as.numeric(minutes)/60 + as.numeric(seconds)/3600)
april_ride_data %>% mutate(ride_hrs = as.numeric(hours) +as.numeric(minutes)/60 + as.numeric(seconds)/3600)
may.ride.data %>% mutate(ride_hrs = as.numeric(hours) +as.numeric(minutes)/60 + as.numeric(seconds)/3600)
june_ride_data %>% mutate(ride_hrs = as.numeric(hours) +as.numeric(minutes)/60 + as.numeric(seconds)/3600)
july.ride.data %>% mutate(ride_hrs = as.numeric(hours) +as.numeric(minutes)/60 + as.numeric(seconds)/3600)
august_ride_data %>% mutate(ride_hrs = as.numeric(hours) +as.numeric(minutes)/60 + as.numeric(seconds)/3600)
september_ride_data %>% mutate(ride_hrs = as.numeric(hours) +as.numeric(minutes)/60 + as.numeric(seconds)/3600)
october_ride_data %>% mutate(ride_hrs = as.numeric(hours) +as.numeric(minutes)/60 + as.numeric(seconds)/3600)
november_ride %>% mutate(ride_hrs = as.numeric(hours) +as.numeric(minutes)/60 + as.numeric(seconds)/3600)
december_ride_data %>% mutate(ride_hrs = as.numeric(hours) +as.numeric(minutes)/60 + as.numeric(seconds)/3600)

# useful columns selected 
jan.ride.data <- jan.ride.data %>%select(rideable_type,member_casual,week_day,month,ride_hrs)
february_ride_data <- february_ride_data%>% select(rideable_type,member_casual,week_day,month,ride_hrs)
march_ride_data <- march_ride_data %>% select(rideable_type,member_casual,week_day,month,ride_hrs)
april_ride_data <- april_ride_data %>% select(rideable_type,member_casual,week_day,month,ride_hrs)
may.ride.data <- may.ride.data%>% select(rideable_type,member_casual,week_day,month,ride_hrs)
june_ride_data <- june_ride_data %>% select(rideable_type,member_casual,week_day,month,ride_hrs)
july.ride.data <- july.ride.data %>% select(rideable_type,member_casual,week_day,month,ride_hrs)
august_ride_data <- august_ride_data %>% select(rideable_type,member_casual,week_day,month,ride_hrs)
september_ride_data <- september_ride_data %>% select(rideable_type,member_casual,week_day,month,ride_hrs)
october_ride_data <- october_ride_data %>% select(rideable_type,member_casual,week_day,month,ride_hrs)
november_ride <- november_ride %>% select(rideable_type,member_casual,week_day,month,ride_hrs)
december_ride_data <- december_ride_data %>% select(rideable_type,member_casual,week_day,month,ride_hrs)

# data analysed 
#average ride hrs per weekday for each month
jan_hrs <- jan.ride.data %>% group_by(member_casual,week_day) %>% summarise(avg_ride_hrs=mean(ride_hrs,na.rm = TRUE))
feb_hrs <- february_ride_data %>% group_by(member_casual,week_day) %>% summarise(avg_ride_hrs=mean(ride_hrs,na.rm = TRUE))
mar_hrs <- march_ride_data %>% group_by(member_casual,week_day) %>% summarise(avg_ride_hrs=mean(ride_hrs,na.rm = TRUE))
apr_hrs <- april_ride_data %>% group_by(member_casual,week_day) %>% summarise(avg_ride_hrs=mean(ride_hrs,na.rm = TRUE))
may_hrs <- may.ride.data %>% group_by(member_casual,week_day) %>% summarise(avg_ride_hrs=mean(ride_hrs,na.rm = TRUE))
jun_hrs <- june_ride_data %>% group_by(member_casual,week_day) %>% summarise(avg_ride_hrs=mean(ride_hrs,na.rm = TRUE))
jul_hrs <- july.ride.data %>% group_by(member_casual,week_day) %>% summarise(avg_ride_hrs=mean(ride_hrs,na.rm = TRUE))
aug_hrs <- august_ride_data %>% group_by(member_casual,week_day) %>% summarise(avg_ride_hrs=mean(ride_hrs,na.rm = TRUE))
sep_hrs <- september_ride_data %>% group_by(member_casual,week_day) %>% summarise(avg_ride_hrs=mean(ride_hrs,na.rm = TRUE))
oct_hrs <- october_ride_data %>% group_by(member_casual,week_day) %>% summarise(avg_ride_hrs=mean(ride_hrs,na.rm = TRUE))
nov_hrs <- november_ride %>% group_by(member_casual,week_day) %>% summarise(avg_ride_hrs=mean(ride_hrs,na.rm = TRUE))
dec_hrs <- december_ride_data %>% group_by(member_casual,week_day) %>% summarise(avg_ride_hrs=mean(ride_hrs,na.rm = TRUE))

# avg ride hrs per weekday data combined for each month
avg_ride_data <- combine(jan_hrs,feb_hrs,mar_hrs,apr_hrs,may_hrs,jun_hrs,jul_hrs,aug_hrs,sep_hrs,oct_hrs,nov_hrs,dec_hrs)
avg_ride_per_weekday <- avg_ride_data %>% group_by(member_casual,week_day) %>% summarise(avg_ride_hr = sum(avg_ride_hrs))

# number of rides per weekday for each month
jan_rides <- jan.ride.data %>% group_by(member_casual,week_day) %>% summarise(number_of_rides = n())
feb_rides <- february_ride_data %>% group_by(member_casual,week_day) %>% summarise(number_of_rides = n())
mar_rides <- march_ride_data %>% group_by(member_casual,week_day) %>% summarise(number_of_rides = n())
apr_rides <- april_ride_data %>% group_by(member_casual,week_day) %>% summarise(number_of_rides = n())
may_rides <- may.ride.data %>% group_by(member_casual,week_day) %>% summarise(number_of_rides = n())
jun_rides <- june_ride_data %>% group_by(member_casual,week_day) %>% summarise(number_of_rides = n())
jul_rides <- july.ride.data %>% group_by(member_casual,week_day) %>% summarise(number_of_rides = n())
aug_rides <- august_ride_data %>% group_by(member_casual,week_day) %>% summarise(number_of_rides = n())
sep_rides <- september_ride_data %>% group_by(member_casual,week_day) %>% summarise(number_of_rides = n())
oct_rides <- october_ride_data %>% group_by(member_casual,week_day) %>% summarise(number_of_rides = n())
nov_rides <- november_ride %>% group_by(member_casual,week_day) %>% summarise(number_of_rides = n())
dec_rides <- december_ride_data %>% group_by(member_casual,week_day) %>% summarise(number_of_rides = n())

# combined number of rides per weekday for each month
number_of_rides_data <- combine(jan_rides,feb_rides,mar_rides,apr_rides,may_rides,jun_rides,jul_rides,aug_rides
,sep_rides,oct_rides,nov_rides,dec_rides)

# number of rides per weekday
number_of_rides_per_weekday <- number_of_rides_data  %>% group_by(member_casual,week_day) %>% summarise(number_of_rides = sum(number_of_rides))

#number of rides per month for each month 
jan_ride <- jan.ride.data %>% group_by(member_casual,month) %>% summarise(number_of_rides = n())
feb_ride <- february_ride_data %>% group_by(member_casual,month) %>% summarise(number_of_rides = n())
mar_ride <- march_ride_data %>% group_by(member_casual,month) %>% summarise(number_of_rides = n())
apr_ride <- april_ride_data %>% group_by(member_casual,month) %>% summarise(number_of_rides = n())
may_ride <- may.ride.data %>% group_by(member_casual,month) %>% summarise(number_of_rides = n())
jun_ride <- june_ride_data %>% group_by(member_casual,month) %>% summarise(number_of_rides = n())
jul_ride <- july.ride.data %>% group_by(member_casual,month) %>% summarise(number_of_rides = n())
aug_ride <- august_ride_data %>% group_by(member_casual,month) %>% summarise(number_of_rides = n())
sep_ride <- september_ride_data %>% group_by(member_casual,month) %>% summarise(number_of_rides = n())
oct_ride <- october_ride_data %>% group_by(member_casual,month) %>% summarise(number_of_rides = n())
nov_ride <- november_ride %>% group_by(member_casual,month) %>% summarise(number_of_rides = n())
dec_ride <- december_ride_data %>% group_by(member_casual,month) %>% summarise(number_of_rides = n())

# combined number of rides per month data 
number_of_rides_per_month <- combine(jan_ride,feb_ride,mar_ride,apr_ride,may_ride,jun_ride,jul_ride,aug_ride,sep_ride,oct_ride,nov_ride,dec_ride)

# which bike works the most
jan_bike <- jan.ride.data %>% group_by(member_casual,rideable_type) %>% summarise(number_of_rides = n())
feb_bike <- february_ride_data %>% group_by(member_casual,rideable_type) %>% summarise(number_of_rides = n())
mar_bike <- march_ride_data %>% group_by(member_casual,rideable_type) %>% summarise(number_of_rides = n())
apr_bike <- april_ride_data %>% group_by(member_casual,rideable_type) %>% summarise(number_of_rides = n())
may_bike <- may.ride.data %>% group_by(member_casual,rideable_type) %>% summarise(number_of_rides = n())
jun_bike <- june_ride_data %>% group_by(member_casual,rideable_type) %>% summarise(number_of_rides = n())
jul_bike <- july.ride.data %>% group_by(member_casual,rideable_type) %>% summarise(number_of_rides = n())
aug_bike <- august_ride_data %>% group_by(member_casual,rideable_type) %>% summarise(number_of_rides = n())
sep_bike <- september_ride_data %>% group_by(member_casual,rideable_type) %>% summarise(number_of_rides = n())
oct_bike <- october_ride_data %>% group_by(member_casual,rideable_type) %>% summarise(number_of_rides = n())
nov_bike <- november_ride %>% group_by(member_casual,rideable_type) %>% summarise(number_of_rides = n())
dec_bike <- december_ride_data %>% group_by(member_casual,rideable_type) %>% summarise(number_of_rides = n())

# number of rental of each bike type
# combined each month data together
bike_data <- combine(jan_bike,feb_bike,mar_bike,apr_bike,may_bike,jun_bike,jul_bike,aug_bike,sep_bike,oct_bike,nov_bike,dec_bike)

number_of_rental_per_bike_type <- bike_data %>% group_by(member_casual,rideable_type) %>% summarise(number_of_rental = sum(number_of_rides))
number_of_rental_per_bike_type

# data visualized

library(ggplot2)

# number of rides per month
# bar chart
options(scipen = 100000)
ggplot(data = number_of_rides_per_month,aes(month,number_of_rides,fill = member_casual))+geom_col(position = "dodge")+ xlab("Month") + ylab("Number of rides")+ggtitle("Rides per month") + scale_fill_discrete(name = "Member type")

# number of rides per bike type
# bar chart
ggplot(data = number_of_rental_per_bike_type,aes(rideable_type,number_of_rental,fill = member_casual))+geom_col(position = "dodge")+ xlab("Type of bike") + ylab("Number of rentals")+ggtitle("Which bike works the most") + scale_fill_discrete(name = "Member type")

# number of rides per weekday
# bar chart
ggplot(data = number_of_rides_per_weekday,aes(week_day,number_of_rides,fill = member_casual))+geom_col(position = "dodge")+ xlab("weekday") + ylab("Number of rides")+ggtitle("Rides per weekday") + scale_fill_discrete(name = "Member type")

# average ride hours per weekday
# bar chart
ggplot(data = avg_ride_per_weekday,aes(week_day,avg_ride_hr,fill = member_casual))+geom_col(position = "dodge")+ xlab("weekday") + ylab("Ride duration - hrs")+ggtitle("Rides duration per weekday") + scale_fill_discrete(name = "Member type")



