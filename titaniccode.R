#Find Blank Embark Values - replace them as S
titanic3$embarked <- sub("^$", "S", titanic3$embarked)
                         
#Calculate mean age for passengers with NA ages
titanic3$age[is.na(titanic3$age)] <- round(mean(titanic3$age, na.rm = TRUE))

#Change missing Life Boat values to none
titanic3$boat <- sub("^$", "None", titanic3$boat)

#Has Cabin Number
titanic3$cabin <- sub("^$", "None", titanic3$cabin)

titanic3 <- within(titanic3, has_cabin_number<-ifelse(cabin!="None", 1, 0))