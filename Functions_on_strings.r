#Strings in R

a="Starts with double quotes"
print(a)
[1] "Starts with double quotes"

class(a)
[1] "character"

a="hello"
b="how"
c="are you?"
print(paste(a,b,c))           #Joins the strings with separation as " " by default
[1] "hello how are you?"

print(paste(a,b,c,sep="-"))   #Joins the strings using the separation specified
[1] "hello-how-are you?"

result=format(23.123456789,digits=9)     #Rounds of the specified number to 9 digits 
print(result)
[1] "23.1234568"

result=format(c(6,13.14521),scientific=TRUE)       
print(result)  
[1] "6.000000e+00" "1.314521e+01"

result=format(13.7,width=6)       #Makes the width of given number to 6 by adding white spaces by default       
print(result)
[1] "  13.7"


result=format("Hello",width=8,justify='l')
print(result)
[1] "Hello   "


result=toupper("Hello aayush")
print(result)
[1] "HELLO AAYUSH"

result=tolower("Hello Aayush")
print(result)
[1] "hello aayush"

result=substring("Hello Aayush",7,12)
print(result)
[1] "Aayush"