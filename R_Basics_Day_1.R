#w3 School Tasks for R

#R is a popular programming language used for statistical computing and graphical presentation.

#Its most common use is to analyze and visualize data.

"Hello World" #string to o/p code
'Hello World Single quotes'

print("Hello World") # print function to output the message

5+5

#plot graphs
plot(1:10)

# this is a comment - In R the comment is done by using #

5
20

#for loops
for (x in 1:10)
{
  print(x)
}

#Creating Variables in R

name<-"John"
age<-40

name
age

#name and age are variables, while "John" and 40 are values

names="John"
ages=40

name
age

#Concatenate Elements

text <- "awesome"
paste("R is ",text)

text_1<-"R is good"
text_2<-"for Stats and Data Viz"

paste(text_1,text_2)

num_1<-4
num_2<-5

num_1+num_2

#Multiple Variables
var1<-var2<-var3<- "Blue"

var1
var2
var3

#data types

my_var<-30
my_var

my_var<-"This is a string"
my_var

#We can use the class() function to check the data type of a variable:

x<-10.5
class(x)

y<-100L
class(y)

z<-"this is a string"
class(z)

A<-9i
class(A)

B<-TRUE
class(B)

c<-""
class(c)

d<-NULL
class(d)

#math in R

10+2

8-9

max(3,9,1)
min(0,-1,9,2)

sqrt(2)
sqrt(25)

abs(0)
abs(0.1)
abs(-1)

ceiling(1.9)
floor(2.7)

str<-"this is line1
and this is line 2
and this is line 3"
str
cat(str)

str_char<-"hello"
nchar(str_char)

str_char<-"hello hello"
nchar(str_char)

str_char<-"hello hello "
nchar(str_char)

str_check<-"Hello"

grepl("H",str_check)
grepl("",str_check)
grepl("h",str_check)
grepl("Hel",str_check)
grepl("Hello ",str_check)

#escape char
str_escape<-"Thats great to know \"bye\" thanks "
str_escape
cat(str_escape)

#booleans

10>2
2>4
9==0


a<-1
b<-2
a
a<b
a<2

if(b>a)
  {
  print("b is greater than a")
  }else{
  print("a is greater than b")
  }

#operators

#assignment opperator

my_var_1<-1
my_var_2<<-2

3->my_var_3
4->>my_var_4

my_var_1
my_var_2
my_var_3
my_var_4
