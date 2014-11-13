#Install and load required libraries (choose Cloud-0 as your mirror)
install.packages("ggplot2")
install.packages("directlabels")
library(ggplot2)
library(directlabels)

#Load data
guns <- read.csv(file="guns.csv", header=TRUE, sep="\t")

#Create chart
plot <- ggplot(guns, aes(x = guns$y, y = guns$x))

#Specify what type of marker you want, and plot the basic chart
plot + geom_point()

#Optional: Add color, size, and regression line
plot + geom_point(color="red", size=5) + geom_smooth(method = "lm", se = FALSE) 

#Save your progress in a new variable and chart again
plotColorSizeLine <- plot + geom_point(color="red", size=5) + geom_smooth(method = "lm", se = FALSE)
plotColorSizeLine

#Add labels
plotColorSizeLine + geom_dl(aes(label=guns$labels),method='smart.grid')