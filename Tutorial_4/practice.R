data <- read.csv(file.choose())

# different data class
# barplot(data$X2017)
# 
# class(data)
# class(data$X2017)

# there are characters such as comma making the conversion go awry
data$X2017
as.numeric(data$X2017)
as.numeric("31234")
as.numeric("31,234")

# gsub
as.numeric(gsub(",", "", data$X2017))

barplot(as.numeric(gsub(",", "", data$X2017)))
