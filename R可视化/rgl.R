install.packages("rgl")
library(rgl)
z <- 2 * volcano
x <- 10 * (1:nrow(z))
y <- 10 * (1:ncol(z))
zlim <- range(z)
zlen <- zlim[2] - zlim[1] + 1
colorlut <- terrain.colors(zlen)
col <- colorlut[ z-zlim[1]+1 ]
rgl.open()
rgl.surface(x, y, z, color=col, back="lines")

#ex2
library(rgl)
attach(mtcars)
plot3d(wt, disp, mpg, col="red", size=5)
