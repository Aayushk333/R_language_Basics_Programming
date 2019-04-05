#R programming language is Case sensitive language
#Initialising Variables in R 
#We can use '=' or '<-' or '->' . The syntaxes are shown below .
x="Hello"
print(x)
[1] "Hello"

y<-"NSIC"
print(y)
[1] "NSIC"

"BVCOE"->z
print(z)
[1] "BVCOE"


#Single line comments are made using a '#' symbol. 

#For Multi Line Comments there is no specific syntax in R. 
#Therefore we use a trick shown below for multiline comments
if (FALSE)
{"Multi line comment content"}

#To see the variables type or class of variables 
#For eg:
v<-TRUE
print(class(v))
[1] "logical"

v<-12.3
print(class(v))
[1] "numeric"

v<-12L
print(class(v))
[1] "integer"

v<-12+3i
print(class(v))
[1] "complex"

v<-"HI hello"
print(class(v))
[1] "character"

#Not any specific datatype
#Raw is used to tell the compiler that this variable doesn't have  any specific datatype
v<-charToRaw("Abcd")
v
[1] 41 62 63 64
print(class(v))
[1] "raw"

#Creating vectors in R
apple<-c('red','green','yellow')
apple
[1] "red"    "green"  "yellow"
class(apple)
[1] "character"
#c stands for combine function which is used to create a vector


#Creating Lists in R
list1<-list(c(3,5,7),21.1)
print(list1)
[[1]]
[1] 3 5 7

[[2]]
[1] 21.1


#Creating Matrices in R
m=matrix(c('a','a','c','b','d','r'),nrow=2,ncol=3)
print(m)
     [,1] [,2] [,3]
[1,] "a"  "c"  "d" 
[2,] "a"  "b"  "r" 


#Creating arrays in R
a<-array(c('green','yellow'),dim=c(3,3,2))
print(a)
, , 1

     [,1]     [,2]     [,3]    
[1,] "green"  "yellow" "green" 
[2,] "yellow" "green"  "yellow"
[3,] "green"  "yellow" "green" 

, , 2

     [,1]     [,2]     [,3]    
[1,] "yellow" "green"  "yellow"
[2,] "green"  "yellow" "green" 
[3,] "yellow" "green"  "yellow"



#Create a vector
apple_colors<-c('green','red','green','green','yellow')
#create a factor object
factor_apple<-factor(apple_colors)
print(factor_apple)
[1] green  red    green  green  yellow
Levels: green red yellow

print(nlevels(factor_apple))
[1] 3

number=c(1,2,3,4,5)
number
[1] 1 2 3 4 5
factor_number<-factor(number)
print(factor_number)
[1] 1 2 3 4 5
Levels: 1 2 3 4 5
nlevels(factor_number)
[1] 5

number_string=c(1,2,3,'apple','orange','yellow')
factor_ns=factor(number_string)
print(factor_ns)
1] 1      2      3      apple  orange yellow
Levels: 1 2 3 apple orange yellow



#Create a data Frame in R
BMI = data.frame(
gender=c('male','male','female'),
height=c(152,171.5,165),
weight=c(81,93,78),
Age=c(42,38,26)
)
print(BMI)
  gender height weight Age
1   male  152.0     81  42
2   male  171.5     93  38
3 female  165.0     78  26

#To see all the variables that have been created in the environment created ,  we use the command ls()
ls()
[1] "a"             "apple"         "apple_colors"  "b"            
[5] "BMI"           "c"             "d"             "emp.data"     
[9] "factor_apple"  "factor_ns"     "factor_number" "gender"       
[13] "height"        "i"             "l1"            "l2"           
[17] "labels"        "list_data"     "list1"         "list2"        
[21] "list3"         "m"             "m1"            "m2"           
[25] "n"             "new_func"      "number"        "number_string"
[29] "piepercent"    "r"             "result"        "t"            
[33] "v"             "v1"            "v2"            "vec"          
[37] "weight"        "x"             "y"             "z"


#Printing all the variables containing  a
print(ls(pattern="a"))
[1] "a"             "apple"         "apple_colors"  "emp.data"     
[5] "factor_apple"  "factor_ns"     "factor_number" "labels"       
[9] "list_data"

#To remove a variable from the environment , we use rm()
rm(a)
ls()
 [1] "apple"         "apple_colors"  "b"             "BMI"          
 [5] "c"             "d"             "emp.data"      "factor_apple" 
 [9] "factor_ns"     "factor_number" "gender"        "height"       
[13] "i"             "l1"            "l2"            "labels"       
[17] "list_data"     "list1"         "list2"         "list3"        
[21] "m"             "m1"            "m2"            "n"            
[25] "new_func"      "number"        "number_string" "piepercent"   
[29] "r"             "result"        "t"             "v"            
[33] "v1"            "v2"            "vec"           "weight"       
[37] "x"             "y"             "z"   



#R has 5 types of Operators
#Arithmetic,Relational,Logical,Assignment and Miscellaneous Operators
#Some of the implementations are as Follows : 
x=c(2,33)
y=c(10,20)
 
print(x+y)
[1] 12 53
print(x-y)
[1] -8 13
print(x*y)
[1]  20 660
print(x%%y)
[1]  2 13
print(x^y)
[1] 1.024000e+03 2.345734e+30
print(x>y)
[1] FALSE  TRUE
print(x<y)
[1]  TRUE FALSE
print(x==y)
[1] FALSE FALSE
print(x=y)
[1] 10 20
print(x!=y)
[1] TRUE TRUE
print(x&&y)
[1] TRUE
print(x||y)
[1] TRUE


#Assigning continuous values to a variable
v=2:20
print(v)
[1]  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
print(5 %in%v)     #Checks whether an element is present in the list or not
[1] TRUE

#If Statement in R
x=30L
if(is.integer(x))
{print("X is an integer")}
[1] "X is an integer"

#If-else Statement in R
x=c("what","is","the","Truth")
if ("truth" %in%x)
{print("Truth is found") }
else
{print("Truth is not found")}
[1] "Truth is not found"

#Similarily we can write If Else-if ladder in R


#To get the third indexed element from a list
x=switch(3,"first","second","third")
x
[1] "third"

