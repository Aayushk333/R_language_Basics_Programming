
#Loops in R

#For loop in R
v=c("hello","world")
c=1
repeat{
print(v)
c=c+1
if(c>5){
break
}
}
[1] "hello" "world"
[1] "hello" "world"
[1] "hello" "world"
[1] "hello" "world"
[1] "hello" "world"


#While Loop in R
v=c("hello","world")
c=1
while(c<10){
print(v)
c=c+1
}
[1] "hello" "world"
[1] "hello" "world"
[1] "hello" "world"
[1] "hello" "world"
[1] "hello" "world"
[1] "hello" "world"
[1] "hello" "world"
[1] "hello" "world"
[1] "hello" "world"


#For each loop in R
v=letters[1:10]
for(i in v){
print(i)
}
[1] "a"
[1] "b"
[1] "c"
[1] "d"
[1] "e"
[1] "f"
[1] "g"
[1] "h"
[1] "i"
[1] "j"


#Continue Statement in R
v=letters[1:6]
for (i in v){
if(i=='d'){
next
}
print(i)
}
[1] "a"
[1] "b"
[1] "c"
[1] "e"
[1] "f"
