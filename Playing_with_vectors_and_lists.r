# Playing with vectors 

v=6.6:12.6
v
[1]  6.6  7.6  8.6  9.6 10.6 11.6 12.6

v=6.6:12.1
v
[1]  6.6  7.6  8.6  9.6 10.6 11.6

print(seq(5,9, by= 0.3))
[1] 5.0 5.3 5.6 5.9 6.2 6.5 6.8 7.1 7.4 7.7 8.0 8.3 8.6 8.9

vec=c(10,5,50,100,40)
vec
[1]  10   5  50 100  40

sort(vec)                               #Inbuilt function to sort the array in ascending order 
[1]   5  10  40  50 100

sort(vec,decreasing=TRUE)               #For descending order sorting 
[1] 100  50  40  10   5



#Creating a non-homogeneous list 
list_data=list(c("jan","feb","mar"),matrix(c(3,9,5,6,7,8),nrow=2),list("green",12.3))
list_data
[[1]]
[1] "jan" "feb" "mar"

[[2]]
     [,1] [,2] [,3]
[1,]    3    5    7
[2,]    9    6    8

[[3]]
[[3]][[1]]
[1] "green"

[[3]][[2]]
[1] 12.3

#Assigning names to the elements of the non-homogeneous list
names(list_data)=c("Vector","matrix","inner_list")

print(list_data[1])
$Vector
[1] "jan" "feb" "mar"

print(list_data[2])
$matrix
     [,1] [,2] [,3]
[1,]    3    5    7
[2,]    9    6    8

print(list_data[3])
$inner_list
$inner_list[[1]]
[1] "green"

$inner_list[[2]]
[1] 12.3

#Adding an element to the list
list_data[4]=3
list_data
$Vector
[1] "jan" "feb" "mar"

$matrix
     [,1] [,2] [,3]
[1,]    3    5    7
[2,]    9    6    8

$inner_list
$inner_list[[1]]
[1] "green"

$inner_list[[2]]
[1] 12.3


[[4]]
[1] 3

#Overwriting the element of the list 
list_data[4]=NULL
list_data
$Vector
[1] "jan" "feb" "mar"

$matrix
     [,1] [,2] [,3]
[1,]    3    5    7
[2,]    9    6    8

$inner_list
$inner_list[[1]]
[1] "green"

$inner_list[[2]]
[1] 12.3

#Appending a list to the main outer list as an element
a=list(c(2,3))
list_data[4]=a
list_data
$Vector
[1] "jan" "feb" "mar"

$matrix
     [,1] [,2] [,3]
[1,]    3    5    7
[2,]    9    6    8

$inner_list
$inner_list[[1]]
[1] "green"

$inner_list[[2]]
[1] 12.3


[[4]]
[1] 2 3

#Combining 2 lists as a single vector
list1=c('i','l','y')
list2=c('i','m','y')
list3=c(list1,list2)
list3
[1] "i" "l" "y" "i" "m" "y"

#Converting into list
class(list3)
[1] "character"
list3=list(c(list1,list2))
class(list3)
[1] "list"

#Unlisting the elements of the list  
v1=unlist(list1)
v2=unlist(list2)
v1
[1] "i" "l" "y"
v2
[1] "i" "m" "y"