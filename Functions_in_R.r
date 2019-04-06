#Functions in R 

#In built functions for eg: 
print(seq(10,15))             #Prints numbers in sequence from 10 to 15
[1] 10 11 12 13 14 15

print(sum(10,15))             #Prints the sum of numbers passed as arguments
[1] 25


#User defined functions
x=function(a){
for(i in 1:a){
b=i^2
print(b)
}
}
print(x(5))
[1] 1
[1] 4
[1] 9
[1] 16
[1] 25

#Functions with default arguments 
new_func=function(a=3,b=5){
return(a*b)
}
a=new_func()     #The value returned from the function gets stored in variable a
print(a)
[1] 15

new_func=function(a=3,b=5){
return(a*b)
}
a=new_func(10,30)     #The value returned from the function gets stored in variable a
print(a)
[1] 300