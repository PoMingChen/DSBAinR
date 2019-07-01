# 1.1 R Data Types

# 1. Vectors 向量（一個維度）

## Create a numeric vector
###c() 我們又稱為c combine
a <- c(1,2,5.3,6,-2,4)
print(a)

a <- 2:9
a

# Refer to elements of a vector using subscripts.
a[c(2,4)]

## Create a character vector
b <- c("one", "two", "three") 
b == "one"

b[b == "one"]


# 2. Matrices 矩陣（兩個維度）

# Create a matrix （col優先，先填滿第一個col內的row）
M <- matrix(c('a','a','b','c','b','a'), nrow = 2, ncol = 3)
print(M)

# Create a matrix and fill in by row
M <- matrix( c('a','a','b','c','b','a'), nrow = 2, ncol = 3, byrow = TRUE)
print(M)

# Create an array （多個dimension，可以用array，像是兩個3x3的矩陣）（但是實務上遇到array較少）
a <- array(c('green', 'yellow'), dim = c(3, 3, 2)) #2 是第三維
print(a)

# Matrix Manipulation
A <- matrix(c(1,2,3,4), nrow = 2, ncol = 2)
B <- matrix(c(1,1,2,2), nrow = 2, ncol = 2)
A
B

A * B
A %*% B #矩陣相乘要記得有%

t(A) #Transpose

solve(A) #解反矩陣

b <- c(1,1)
solve(A, b) #解Ax = b的反矩陣，就是x = A^-1 b
solve(A) %*% b #結果同上


# 3. Lists（把不同的東西都塞在一包，這時候list就滿好用的） 

## vector裡面需要放同一類型的資料，但是list不用。

# Create a list.
list1 <- list(c(2,5,3), 21.3, sin)

# Print the list.
print(list1)

# Create list and asign variable names.
list2  <- list(vector = c(2,5,3),
numeric = 21.3,
func = sin)

# Print names of list and list itself.
names(list2)
print(list2)


# 4. Factros（因子）

## Factors，就是用來儲存類別資料的資料型態，基本上在R裡面遇到類別變數的時候，多盡量可以用成Factor 

# Create a vector.
apple_colors <- c('green','green','yellow','red','red','red','green')

# Create a factor object.
factor_apple <- factor(apple_colors)

# Print the factor.
print(factor_apple)
print(nlevels(factor_apple))


# 5. Data Frames

name <- c("David", "Hsi", "Jessie")
age <- c("24", "25", "36")
gender <- c("Male", "Male", "Female")

# Create by variables
data1 <- data.frame(name, age, gender)
data1

data2 <- data.frame(
  name = c("David", "Hsi", "Jessie"),
  age = c("24", "25", "36"),
  gender = c("Male", "Male", "Female")
)
data2

head(data2)
colnames(data2) <- c("Var_1", "Var_2","Var_3")
rownames(data2) <- c("1", "2", "3")
data2
summary(data2)