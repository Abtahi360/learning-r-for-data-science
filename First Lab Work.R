a<- c(1,2,3,4,5)
f <- 1:100
b<- c(5)
d<- 4
e<- c(6,7,8,9,10,NA)
a+e
a-e
sum(a)
sum(e, na.rm = TRUE)

mean(a)
mode(a)
var(a)  # variance
median(a)
sd(a)   # standard deviation

ch_vec <- c("apple", "banana")

num_vec <- c(10,20,30,40,50)
num_vec[3]
num_vec[3] <- 35

num_vec[c(3,5)] <- c(300, 500)

num_vec <- num_vec[num_vec>30]


# Date: 26/02 -- Thursday 

sorted_vec <- sort(e, decreasing = TRUE)
print(sorted_vec)

# New
seq_vec <- seq(1, 10, by = 2)
print(seq_vec)

seq_vec <- seq(5, 30, by = 5)
print(seq_vec)

seq_vec <- seq(5, 30, 5)
print(seq_vec)

# New
rep_vec <- rep(c(1, 2, 3), times = 3)
print(rep_vec)

print(rep(c(1, 2, 3, 4), times = c(1, 2, 3, 4)))

print(rep(c(1:4), times = c(1:4)))
print(rep(1:4, 1:4))

# New
mat <- matrix(1:9, nrow = 3, ncol = 3)
print(mat)

mat <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
print(mat)

mat <- matrix(c(3, 1, 3, 14, 2, 0, 50, 1, 5), nrow = 3, ncol = 3)
print(mat)
rownames(mat) <- c("Row1", "Row2", "Row3")
colnames(mat) <- c("Col1", "Col2", "Col3")
print(mat)

print(mat[2:3, 2:3])

mat[c(1, 3), c(1, 3)]



# -----------------------------------------------
# Final
# -----------------------------------------------
IQR(iris$Sepal.Length)

quantile(iris$Sepal.Length, probs = c(0.25, 0.75))

mean((iris$Sepal.Length))
mean(iris$Sepal.Length[iris$Species == "setosa"])

install.packages("dplyr")
install.packages("tidyverse")
library(dplyr)
iris %>%
  group_by(Species) %>%
  summarise(
    count = n(),
    mean_sepal_length = mean(Sepal.Length)
    sd_sepal_length = sd(Sepal.Length)
    mean_petal_length = mean(Petal.Length)
    sd_petal_length = sd(Petal.Length)
  )






















