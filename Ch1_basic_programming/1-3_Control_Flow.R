# Boolean Operator
3 > 5
6 > 5

# And
set.seed(0)
x <- runif(8, -1, 1)
x
0 <= x & x <= 0.5 # Elementwise AND
0 <= x && x <= 0.5 # Lazy AND
x[0 <= x & x <= 0.5] <- 999 # Elementwise AND
x

# Or
x <- runif(8, -1, 1)
x

-0.5 >= x | x >= 0.5 # Elementwise OR
-0.5 >= x || x >= 0.5 # Lazy AND
x[-0.5 >= x | x >= 0.5] <- 999 # Elementwise AND
x

# If and Else
x <- 1
if (x > 0) {
  y <- 5
} else {
  y <- 10
}
y

# ifelse function
y <- ifelse(x > 0, 5, 10)
y 

# Switch
switch("first", first = 1 + 1, second = 1 + 2, third = 1 + 3)
switch("second", first = 1 + 1, second = 1 + 2, third = 1 + 3)
switch("third", first = 1 + 1, second = 1 + 2, third = 1 + 3)