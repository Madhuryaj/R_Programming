# DAY 2
#NESTED IF

a<-23
if(a>10){
  print("A is greater than 10")
  if(a>30)
  {
    print("A is also greater than 30")
    
  }else{
    print("A is not greater than 30")
  }
}else
{
  print("its below 10")
}

#logical operator
a<-20
b<-330
c<-5
if(a>b & c>a)
{
  print("Both conditions are true")
}else{print("nope")}

if(a>b | c>a)
{
  print("Either of it true")
}else{print("nope")}

#R While Loop

i<-1

while(i<6){
  print(i)
  i<-i+1
}

#break stmt in loop

p<-1
while(p<10)
{
  print(p)
  p=p+1
  if(p==4){
    break;
  }
}

#next stmt

q<-1
while(q<10){
  q=q+1
  if(q==3)
  {next}
  print(q)
}

#If .. Else Combined with a While Loop

dice<-1
while(dice<=6)
{
  if(dice<6)
  {
    print("Try Again")
    
  }
  else{
    print("Yes")
  }
  dice<-dice+1
}

#for loops
for (x in 1:10){
  print(x)
}

fruits<- list ("red","blue","yellow")

for (x in fruits)
{
  print(x)
}

dice <- c(1,2,3,4,5,6)

for (x in dice)
{
  print(x)
}

#break stmt
fruits<-list("apple","banana","cherry")
for(x in fruits)
{
  if(x=="cherry"){
    break
  }
  print(x)
}

#next stmt
fruits<-list("apple","banana","cherry")
for(x in fruits)
{
  if(x=="banana"){
    next
  }
  print(x)
}


dice<- 1:6
for(x in dice){
  if(x==6){
    print(paste("the number is",x,"won!"))
  }else{
    print(paste("the dics number is",x,",Not won"))
  }
}

#nested loop

adj<-list("red","big","tasty")

fruits<-list("apple","orange","cherry")

for(x in adj){
  for(y in fruits)
  {
    print(paste(x,y))
  }
}


