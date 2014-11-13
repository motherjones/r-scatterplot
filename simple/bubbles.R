# Load data
bubble <- read.csv("bubble-chart.csv", header=TRUE, sep="\t")

# Size circles
symbols(bubble$x, bubble$y, circles=bubble$size, inches=.1, fg="white", bg="steelblue2", xlab="x axis", ylab="y axis")
 
# Add labels
text(bubble$x, bubble$y, bubble$labels, cex=0.5)