data <- read.csv(file.choose())

data$num2017 <- as.numeric(gsub(",", "", data$X2017))
data$num2018 <- as.numeric(gsub(",", "", data$X2018))
data$num2019 <- as.numeric(gsub(",", "", data$X2019))
data$num2020 <- as.numeric(gsub(",", "", data$X2020))

barplot(data$num2017, main = "The birth summary in Australia", xlab = "State",
        ylab = "The number of birth", names = data$Region, las=3, col = 3)

# 1. Remove scientific notation
options(scipen=999)

# 2. Solution 1: change the size of plot window
par(mar = c(8, 8, 8, 8))
barplot(data$num2017, main = "The birth summary in Australia",
        xlab = "State", ylab = "The number of birth", names = data$Region, las=3, col = 3)

# 3. Solution 2: use abbreviations
barplot(data$num2017, names.arg = c("NSW", "Vic", "Qld", "SA", "WA", "Tas", "NT", "ACT"),
        main = "The number of births in different states of Australia in 2017",
        xlab = "State", ylab = "The number of births", las=3)

# 4. horizontal bar chart
barplot(data$num2017, horiz = TRUE,
        main = "The number of births in different states of Australia in 2017",
        ylab = "State", xlab = "The number of births",
        names.arg = c("NSW", "Vic", "Qld", "SA", "WA", "Tas", "NT", "ACT"), las=1)

# 5. multiple data series
x <- rbind(data$num2017,data$num2018, data$num2019, data$num2020)
barplot(x, beside = TRUE, col = 1:4,
        main = "The number of births in different states of Australia form 2017 to 2020",
        xlab = "State", ylab = "The number of births",
        names.arg = c("NSW", "Vic", "Qld", "SA", "WA", "Tas", "NT", "ACT"), las=3)
barplot(x, col = 1:4,
        main = "The number of births in different states of Australia form 2017 to 2020",
        xlab = "State", ylab = "The number of births",
        names.arg = c("NSW", "Vic", "Qld", "SA", "WA", "Tas", "NT", "ACT"), las=3)

# 6. legend
legend("topright", legend=c("2017", "2018", "2019", "2020"), pch = 15, col = 1:4)
