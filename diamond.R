x = rnorm(200, 100, 50)
y = rnorm(200, 100, 50)

# qqplot function
qqplot(x, y, xlab = "test x", ylab = "test y", main = "Q-Q Plot")



library(ggplot2)

#ggplot diamond dataset
ggplot(diamonds)


ggplot(diamonds, aes(x=carat))  # if only X-axis is known. The Y-axis can be specified in respective geoms.

ggplot(diamonds, aes(x=carat, y=price))  # if both X and Y axes are fixed for all layers.

ggplot(diamonds, aes(x=carat, color=cut))  # Each category of the 'cut' variable will now have a distinct  color, once a geom is added.

ggplot(diamonds, aes(x=carat), color="steelblue")


#put geoms layer on top of the other one layer
#layer 1= scatter plot geoms,  layer 2=geoms
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + geom_smooth()

#asthetic geoms
ggplot(diamonds) + geom_point(aes(x=carat, y=price, color=cut)) + geom_smooth(aes(x=carat, y=price, color=cut)) 

library(ggplot2)

#use ggplot inside function to plot x and y axis
gg <- ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + labs(title="Scatterplot", x="Carat", y="Price")  # add axis lables and plot title.
print(gg)


