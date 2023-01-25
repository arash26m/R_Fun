#--------------------------------R for data science
#https://r4ds.had.co.nz/index.html
#--------------------------------dplyr is a package for working with data like Excel
#https://dplyr.tidyverse.org/
library(dplyr)
arrange(mtcars, cyl, am)
mtcars %>% arrange(cyl, am)
mtcars %>% arrange(desc(cyl), am)
select(mtcars, mpg, cyl)
mtcars %>% select(mpg, cyl)
mtcars %>% select(mpg, cyl) %>% arrange(mpg)
#
x=1:10
summary(x)
x %>% summary ()
#
trees
summary(select(trees, Height, Volume))
#
trees %>%
  select(Height, Volume) %>%
  filter(Height>80) %>%
  summary()
#

#--------------------------------column frequency
#creating a data frame
df <- data.frame(col1 =  sample(letters[1:3], 8, 
                                replace = TRUE) ,
                 col2 = sample(letters[1:3], 8,
                               replace = TRUE),
                 col3 = sample(letters[1:3], 8,
                               replace = TRUE),
                 col4 = sample(letters[1:3], 8, 
                               replace = TRUE))
#unique values
aa<- unique(unlist(df))
# apply the summation per value 
freq <- sapply(df, function(x) table(factor(x, levels = aa, ordered = TRUE)))
print ("Count of variables per column")
print (freq)
#--------------------------------select specefic rows or columns
# All Rows and All Columns
df[,]

# First row and all columns
df[1,]

# First two rows and all columns
df[1:2,]

# First and third row and all columns
df[ c(1,3), ]

# Select columns by name
df[ ,c("FFE","DEM")]

#--------------------------------
