#BA Induction overview

?mtcars # gives the description of the data set mtcars

#load data set
data(mtcars)
#overview of dataset str is structure not string here
str(mtcars)
#descreptive stats
summary(mtcars)

#mean
mean(mtcars$mpg)
#plots
#hist(x,...)
hist(mtcars$mpg)
#plot(x,y)
plot(mtcars$mpg, mtcars$hp)

#title
plot(mtcars$mpg,mtcars$hp,main="MPG vs Horse Power")

install.packages("tidyverse") #install from CRAN
#install ggplot2
install.packages("ggplot2")
library(ggplot2)

qplot(mtcars$mpg,mtcars$hp)

#both are same below
qplot(y=mpg,x=hp,data=mtcars,main="MPG by Horse Power")
qplot(y=mtcars$mpg,x=mtcars$hp,main="MPG by Horse Power")


#operators in R
#Exercise 1 
x<-99
x
print(x)
class(x) #numeric

y<-"hello"
print(y)
class(y)#character

5+1
10*10
8/3
8/2
paste(x,y)
#class exercise 2

name<-"John"
name
x<-9764*478
y<-6743/74

paste(x,y)

 #vectors, lists matrics and data frames
#vectors is same class

a<-c(3,5,8)
a

b<-c("Hellow","x")
b

c<-c(TRUE,FALSE)
c

#list is diffrent class
d<-list(1,"hello")
d

e<-list(9,"bye",1.7)
e

#matrics is vectors with dimensions (rows and columns)
f<-matrix(2:7,nrow=2,ncol=3)
f

#data frames is collection of lists (rows)

g<-factor(c("yes","no","no","yes","yes","ok"))
g
table(g)

levels(g)

#missing values in R - DQ Issues

h<-c(2,8,NA,4,6)
h
summary(h) #gives the NA 

#data frames are list of list
i<-data.frame(ID=1:5,name=c("sarah","mark","emma","david","e"))
i

#subletting data in R

j<-c(2,6,7,10,16)
j[3]
j[1]
j[1:4]
j>6
j[j>6]


#subsetting matrices

x<-matrix(1:12,3,4)
x
x[3,4]
x[2,]
x[,3]


list_2<-list(names=c("mark","sue","john"),ages=c(10,14,18))
list_2
list_2$names
list_2["names"]

list_2[[2]][[3]]

k<-c(1,6,NA,14,NA,22)
print(is.na(k))
print(which(is.na(k))) # index of NA values

df<-complete.cases(k)
print(df)

#omit removes all the NA in the data frame

airquality<-na.omit(airquality)
airquality
airquality<-airquality[complete.cases(airquality),]
airquality
summary(airquality)
str(airquality)

#class exercise
t<-c(1,2,NA,3,NA,4)
t<-is.na(t)
t
df<-complete.cases(t)
df

student<-list(name=c("Madhu","Rohan","John"),grades=c(90,80,70))
student["grades"]
student$grades           

matrix_a<-matrix(1:25,5,5)
matrix_a
matrix_a[3,]
matrix_a[,2]
