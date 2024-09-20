data <- read.csv(file.choose())

summary(data)
as.numeric(gsub(",", "", data$X2017))


data$num2017 <- as.numeric(gsub(",", "", data$X2017))
data$num2018 <- as.numeric(gsub(",", "", data$X2018))
data$num2019 <- as.numeric(gsub(",", "", data$X2019))
data$num2020 <- as.numeric(gsub(",", "", data$X2020))

sapply(data, class)
barplot(as.numeric(gsub(",", "", data$num2018)))
barplot(data$num2017, names=data$Region)
barplot(data$num2017, names=data$Region, las=3)

options(scipen=999)

barplot(data$num2017, names=data$Region, xlab = "region", ylab = "Salary", main = "Salary of different regions in AU", 
        las=1, xlim=c(0,10), ylim=c(0,100000), width = 1, space = 0.2, col = "#4682B4", border = TRUE, beside = TRUE)

barplot(data$num2018, names=data$Region, xlab = "region", ylab = "Salary", main = "Salary of different regions in AU", 
        las=1, xlim=c(0,10), ylim=c(0,100000), width = 1, space = 0.2, col = "#4682B4", border = TRUE)

barplot(data$num2017, names=data$Region, las=3, horiz = TRUE)

rbind()
barplot(rbind(data$num2017, data$num2018), names=data$Region, las=3, horiz = TRUE)

legend("topright", legend , fill = colors)

plot(c(2017:2020), data[1, 6:9], type="o", col="red", xaxt="n", xlab="Year", ylab="Birth number", main="The number of births in Victoria", ylim = c(0, 120000))

axis(1,at=c("2017", "2018", "2019", "2020"))

lines(c(2017:2020), data[2, 6:9], type = "o", col =2)

