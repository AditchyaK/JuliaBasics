using Printf
using Statistics

#this is a comment
#= this
is a
multiline 
comment 
=#
#=
var = "This is a string"
var = 1 #variable types are dynamically assigned

println("Hello World!");
println(var)

function changeNum() #function notation
    x::Int8 = 10 #two semicolons after a variables asserts a data type
    #x = "Dog" this will cause an error since a string is not of type Int8
end

canDrive = true #booleans are true or false

#data types are Int8, Int16, Int32, Int64
#and Float32, Float64, UInt8, UInt16 and etc...
#data types such as BigInt and BigFloat increase precision when doing arithmetic

char = 'A' #single quotes for a character
println(char)

char2 = Char(65) #Char takes an arguement of an integerf or which it retrieves the
println(char2)   #UNICODE value (65 = A)

i1 = UInt8(trunc(3.14)) #this casts from a float to an unsigned Int8
println(i1)  #trunc() rounds a float to the closes integer

f1 = parse(Float64, "1") #this parses the string to a floating point number
println(f1)

i2 = parse(Int8, "1") #parses the string to an integer type
println(i2)

s1 = "Random String\n"
println(length(s1)) #prints the length of the string
println(s1[1]) #the first index is 1 and not 0 as usual
println(s1[end]) #element in last index
println(s1[1:4]) #using a range of indices

s2 = string("String", "Another String") #this concatenates the two strings
println(s2)

println("First String " * "Second String")

i3 = 2
i4 = 3
println("$i3 + $i4 = $(i3+i4)") # "$" gives the value associated with the variable

#this is a multiline string
s3 = """I
am
Iron
Man"""
println(s3)

println(findfirst(isequal('i'), "Keigo")) #finds the index where i appears in Keigo
println(occursin("key", "monkey")) #gives a boolean stating whether the first parameter appears in the second

age = 12
if age >= 5 && age <= 6 #conditional statements have equalities as well
    println("You're in Kindergarten")
elseif age >= 7 && age <= 18
    println("You are still young")
else 
    println("Age is meaningless")
end #you must have an end

@printf("true || false = %s\n", true || false ? "cheese" : "fries")
#after the first string is the ternary operator; the conditional is "true || false"
#the response if the conditional is true is "cheese" and "fries" if it is false

@prinf("!true = %s\n", !true ? "true" : "false")
=#

i = 1
while i < 20 #a while loop which has a conditional
    if (i % 2) == 0 #if i is divisible by 2
        println(i) 
        global i += 1 #a global change in i, not local
        continue #skip the rest of the code in the loop
    end
    global i += 1 #global change in i once again
    if i >= 10
        break #breaking out of loop if the counter reaches 10
    end
end