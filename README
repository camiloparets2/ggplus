# ggplus


#The `ggplus` package is an R package that simplifies ggplot2 and adds new geom functions to enhance data visualization.
#Some of the key features include easier customization of plot aesthetics, simplified geoms for common visualizations, and support for animated visualizations.

## Installation
# install.packages("devtools")
devtools::install_github("camiloparets2/ggplus")

#The package includes several S3 and S4 classes and methods for more advanced customization and functionality:

#S3 class and method: ggplus_custom() allows users to create a customized ggplot2 object with specified data, aesthetics, and geometry. 
#The summary.ggplus_custom() method provides a summary of the plot.

#S4 class and method: ggplus_advanced() is an S4 class that allows users to create more complex and interactive plots. 
#The plot.ggplus_advanced() method generates a customized ggplot2 object with interactive capabilities.

#In addition to the S3 and S4 classes and methods, the package includes simplified versions of common ggplot2 geoms, 
#including ggscatter(), ggbar(), ggline(), gghist(), and ggbox(). 
#These geoms allow for quick and easy creation of scatter plots, bar plots, line plots, histograms, and box plots.

library(ggplus)

# Create a scatter plot
ggscatter(mtcars, x = "mpg", y = "hp", color = "blue", size = 3)

# Create a bar plot
ggbar(mtcars, x = "cyl", y = "mpg", fill = "steelblue")

# Create a line plot
ggline(mtcars, x = "mpg", y = "hp", color = "red", size = 1)

# Create a histogram
gghist(mtcars, x = "mpg", bins = 30, fill = "steelblue")

# Create a box plot
ggbox(mtcars, x = "cyl", y = "mpg", fill = "steelblue")

#Contributions
#Contributions to ggplus are welcome! If you find a bug or have a suggestion for improvement, please open an issue or submit a pull request on GitHub.
