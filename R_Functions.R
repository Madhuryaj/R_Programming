#R functions

#creating function
my_function<-function(){
  print("hello this is my function")
}

#calling a function
my_function()

#arguments
#information/data can be passed to the function as arguments

fetch_name<-function(FirstName){
  paste("My name is",FirstName)
}

fetch_name("Sara")
fetch_name("John")

display_name<-function(FirstName,SecondName){
  paste(FirstName,SecondName)
}

display_name("Mia","McLauran")
display_name("John","Cena")
display_name("Maria")
display_name("Maria","Mia","Mc")

#default parameter value

display_country_name<-function(country="Norway"){
  paste("I am from",country)
}

display_country_name("India") #iNDIA overwrites norway 
display_country_name("UK")
display_country_name() # default value is picked up

#return values

sqrt_function<-function(x){
  return(x*x)
}

sqrt_function(2)
sqrt_function(20)
sqrt_function(200)


sqrt_function(3)
sqrt_function(30)
sqrt_function(300)

sqrt_function(4)
sqrt_function(40)
sqrt_function(400)

sqrt_function(5)
sqrt_function(50)
sqrt_function(500)

print(sqrt_function(9))

returned_val<-sqrt_function(7)
print(returned_val)

#nested function
#1)calling a function within another function

Nested_function<-function(x,y){
  sum<-x+y
  return(sum)
}

Nested_function(Nested_function(1,1),Nested_function(3,3)) #output is 8

#2)writing a function within a function

outer_function<-function(x){
  inner_function<-function(y){
    sum<-x+y
    return(sum)
  }
  return(inner_function)
}

output<-outer_function(2)
output(5)

#Recursion

#Global Variables
text<-"awesome"

my_function<-function()
{ text="Great"
  paste("R is",text)
}
my_function()

#global variable inside a function use <<-
txt<-"great"
my_function<-function()
{
  txt<<-"fantastic"
  paste("R is",txt)
  
}
my_function()
print(txt)