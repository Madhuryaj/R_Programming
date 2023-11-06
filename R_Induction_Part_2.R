#Induction 2

#if else

a <- 3

if (a > 4)
{
  print("A is greater than 3")
} else if (a < 4) {
  print("A ia less than 3")
} else {
  print("A is 3")
}

b <- c(1, 2, 3)
d <- 2 * b
d

#iteration in r

#for loops

for (i in 1:9) {
  print(i)
}

x <- c("hi", "hello", "hey")
#seq_along(list) is used when the length of the list is unknow (run time cases against compile case)
for (i in seq_along(x)) {
  print(x[i])
}

# or use below
for (i in 1:length(x)) {
  print(x[i])
}

# -------------------------------------------------------------------------
