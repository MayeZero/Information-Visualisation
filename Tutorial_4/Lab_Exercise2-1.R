data <- read.csv(file.choose())
data$num2017 <- as.numeric(gsub(",", "", data$X2017))
data$num2018 <- as.numeric(gsub(",", "", data$X2018))
data$num2019 <- as.numeric(gsub(",", "", data$X2019))
data$num2020 <- as.numeric(gsub(",", "", data$X2020))

# multiple lines and legend
#########Solution 1
# 1. Plot NSW and add a line for VIC
plot(c(2017:2020), data[1, 6:9], type="o", col=1,
     xaxt="n", xlab="Year", ylab="Birth number", main="The number of births in different states")
axis(1,at=c("2017", "2018", "2019", "2020"))
lines(c(2017:2020), data[2, 6:9], type = "o", col = 2)
# 2. add xlim and ylim to plot:     
plot(c(2017:2020), data[1, 6:9], type="o", col=1,
     xlim = c(2017,2020), ylim = c(0,120000),
     xaxt="n", xlab="Year", ylab="Birth number", main="The number of births in different states")
axis(1,at=c("2017", "2018", "2019", "2020"))
lines(c(2017:2020), data[2, 6:9], type = "o", col = 2)
# 3. add lines for each state
lines(c(2017:2020), data[3, 6:9], type = "o", col = 3)
lines(c(2017:2020), data[4, 6:9], type = "o", col = 4)
lines(c(2017:2020), data[5, 6:9], type = "o", col = 5)
lines(c(2017:2020), data[6, 6:9], type = "o", col = 6)
lines(c(2017:2020), data[7, 6:9], type = "o", col = 7)
lines(c(2017:2020), data[8, 6:9], type = "o", col = 8)
# 4. legend
legend("topright", legend = c("NSW", "Vic", "Qld", "SA", "WA", "Tas", "NT", "ACT"),
       col=1:8, lwd = 1, cex=1)

#########Solution 2
plot(c(2017:2020), data[1, 6:9], xlim = c(2017,2020), ylim = c(0,120000),
     type="o", col=1,
     xaxt="n", xlab="Year", ylab="Birth number", main="The number of births in different states")
axis(1,at=c("2017", "2018", "2019", "2020"))
for (i in 2:8) {
  lines(c(2017:2020), data[i, 6:9], type = "o", col = i)
}
legend("topright", legend = c("NSW", "Vic", "Qld", "SA", "WA", "Tas", "NT", "ACT"),
       col=1:8, lwd = 1, cex=1)

#########Solution 3
matplot(t(data[1:8, 6:9]), type = "o", pch=1, col = 1:8, xaxt="n",
        xlab="Year", ylab="Birth number", main="The number of births in different states")
legend("topright", legend = c("NSW", "Vic", "Qld", "SA", "WA", "Tas", "NT", "ACT"),
       col=1:8, lwd = 1, cex=0.8)

#### Legend location: change the xlim and ylim values
plot(c(2017:2020), data[1, 6:9], xlim = c(2017,2021), ylim = c(0,110000),
     type="o", col=1,
     xaxt="n", xlab="Year", ylab="Birth number", main="The number of births in Victoria")
axis(1,at=c("2017", "2018", "2019", "2020"))
for (i in 2:8) {
  lines(c(2017:2020), data[i, 6:9], type = "o", col = i)
}
legend("bottomright", legend = c("NSW", "Vic", "Qld", "SA", "WA", "Tas", "NT", "ACT"),
       col=1:8, lwd = 1, cex=0.8)