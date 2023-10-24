#Udemy course learning

#install packages via Install tab

#activating packages
library(vcd) # importing the package
require(vcd)

require(tools)

#uninstall by using detach function
detach(package:tools)

#### Setting the working directory ########

getwd()

setwd("/Users/madhuryaj/R_STATS")

getwd()

#Basics Operations in R

3 + 6
3 - 9
8 * 5
1 / 3
5 ^ 2
(7 + 3) * 4
9 / 0 #INF O/p

#### Working with Variables  #######

x <- 15

y <- 3

x + y
x - y
x * y
x / y
x ^ y

z <- x * y
w <- 1.5
class(x)
typeof(x)

class(w)
typeof(w)

v <- "Tom"

class(v)
typeof(v)

t <- "56"
class(t)
typeof(t)

#logical

m <- TRUE
n <- FALSE
typeof(m)
class(m)

#case senstive variables
X <- 2

#list of envi vriables

ls()

#remove variable from envi list

rm(m)
rm(x, X)
rm(list = ls())


##### Vectors #####
#numeric vector
x <- c(10, 20, 30, 40, 50) #c is concatinate
x
class(x)
typeof(x)

#character vector

y <- c("Hi", "Hello", "Hey")
y
class(y)
typeof(y)

#vector of logical operators

z <- c(TRUE, FALSE, TRUE, FALSE)
z

class(z)
typeof(z)

#diffrent types , but it will treated as strings / charaters only

a <- c(1, 2, TRUE, FALSE, "Hello", "Hey")
a
typeof(a)
class(a)

#get vector length

length(a)

#add values to existing vector

a <- c(a, 100)
a

#nest vector

b <- c(a, 20)
b

b <- c(b, c(4, 5), c(8, 9))
b

#create vector using :

x <- 1:5
x
class(x)
typeof(x)

y <- c(1, 2, 3, 4, 5)
y
typeof(y)
class(y)

#descending order

q <- 10:1
q

#use variables

i <- 3
j <- 7

k <- j:i
k

typeof(k)
class(k)

w <- c(1:5, 90)
w

e <- c(1:4, 7:-3)
e
typeof(e)


#### creating vector using rep() function - rep is replication of values #####

r <- rep(2, 5)
r

t <- rep("Hello", 6)
t

u <- rep(c(1, 2, 3), 3)
u

#replicates element wise
p <- rep(c("hi", "hello"), each = 3)
p
#numeric vector
s <- numeric(5)
s
#charcter vector
d <- character(3)
d
#logical vector

f <- logical(4)
f

#### Creating verctors using seq() which creates seq of real numbers ###

g <- seq(from = 1, to = 5, by = 0.5)
g
typeof(g)
class(g)

h <- seq(from = 2, to = 30, by = 5)
h

k<-seq(1,30,5)
k

#reverse order

l<-seq(11,0,-2)
l

c<-seq(1,5,length=10)
c

####### Creating vectors of random numbers #########

v<-sample(100, 15)
v

###### Creating empty vectors #####
# used as a initializer 

b<-c()
b
typeof(b)
class(b)
length(b)

#using NULL value

n<-NULL
n
class(n)
typeof(n)

m<-vector()
m
typeof(m)

b<-c(b,1,2)
b
typeof(b)

b<-c(b,TRUE)
b

#indexing verctors

q1<-c(10,20,30,40,50,60,70,80,90,100)
q1
q1[2]
q1[c(2,3,4)]
q1[c(4,8,10)]

q1[2:5]
q1[5:1]

#filtering verctors
a<-c(10,30,50,80,100)
b<-a[a>12]
b

d<-a[a>12 | a<99]
d

d<-a[a>12 & a<99]
d

#any and all function

all(q1<10)
all(q1<101)
any(q1<100)
any(q1==100)
any(q1<10)
any(q1==10)
all(q1>9 & q1<101)
all(q1>20 | q1<90)
