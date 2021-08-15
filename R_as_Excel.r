#column frequency
# creating a data frame
df <- data.frame(col1 =  sample(letters[1:3], 8, 
                                replace = TRUE) ,
                 col2 = sample(letters[1:3], 8,
                               replace = TRUE),
                 col3 = sample(letters[1:3], 8,
                               replace = TRUE),
                 col4 = sample(letters[1:3], 8, 
                               replace = TRUE))

aa<- unique(unlist(df))

# apply the summation per value 
freq <- sapply(df, function(x) table(factor(x, levels = aa, ordered = TRUE)))
print ("Count of variables per column")
print (freq)
