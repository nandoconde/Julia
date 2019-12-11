# ----------------------------------------
#                VARIABLES
# ----------------------------------------
# TYPES
#   Any
a = []
#   Bool
a = true
a = false
#   Char
a = 'C'
#   String
a = "A"
#   Int64
#   Nothing
n = nothing

# NAMING
a = 1.0
#    Type LaTeX equivalent (\varepsilon here) and press TAB
ε = 5
#    Some names have preassigned value
println(π) # 3.1415926

# PARSING
parse(Int64,"2")
parse(Float64,"3.1415")

# TRUNCATION
#    Eliminates non integer part
trunc(Int64,3.999) # 3
trunc(Int64,-2.31) # -2

# CASTING
string(3)
float(2)

# INFORMATION
# Know type
f = typeof(ε) # Returns interface of type 
# Check type
a isa Float64 # returns Bool


# ----------------------------------------
#                OPERATORS
# ----------------------------------------
# ARITHMETICS
#   +                        Addition
#   -                        Substraction
#   /                        Float division
#   ^                        Exponentiation
#   %                        Modulo
#   ÷                        Integer division
#   +=                       Increment by
#   -=                       Decrement by

# LOGICAL
#   &&                       AND
#   ||                       OR
#   !                        NOT

# COMPARISON
#   ==                       equals. If immutable, check byte-by-byte; else, address 
#   !=                       not equals
#   ≠       . '\ne'          not equals
#   >                        greater than
#   >=                       greater than or equals to
#   ≥       . '\ge'          greater than or equals to   
#   <                        less than
#   <=                       less than or equals to
#   ≤       . '\le'          less than or equals to
#   ∈       . '\in'          element contained in set
#   ∉       . '\notin'       element not contained in set


# ----------------------------------------
#                STRINGS
# ----------------------------------------
# CHARACTER
#   They encode the Unicode 12.1 charset
a = "A"

# STRINGS
#= 
- They are the same as arrays of Char
- However, non-ASCII value occupy more than a byte.
  Thus, adressing them cannot be done as usual if 
  values in array are non-ASCII
- Strings are immutable: z[1] = 'x' is forbidden.
- Numeration starts in 1 and ends in end
=#
z = "Z-"

# ADDRESSING
a = "a f g � f"
ee = z[end]             # Last valid item from string
ee = z[:]               # Whole string
I = nextind(a,7)        # Next valid index to address substring
I = firstindex(a)       # First valid index to address substring
b = a[1:5]              #= Slice (substring) from 1 to 5 included
                           If second index is greater, returns 
                           empty array/string 
                        =#

# OPERATIONS
L = length(z)           # Length (No. Char) of string
T = sizeof(b)           # Size (No. Bytes) of string
b = a*z                 # Concatenation
b = a^4                 # Repetition
res = a ∈ b             # Check appearance
res = a == b            # Check equivalence
res = a < b             # Check order (uppercase are greater than lowercase)
res = a > b             # Check order (uppercase are greater than lowercase)
Z = uppercase(z)        # Uppercase whole string
Z = uppercasefirst("this is a trial sentence.")
                        # Uppercase first Char of whole string
A = titlecase("this is a trial sentence.")
                        # Uppercase first Char of every word
a = lowercase("AA")     # Lowercase whole string
z = lowercasefirst("ZZ")
                        # Lowercase first Char of whole string
t = collect("Aszer")    # Create Char array from String

# FINDING
rango = findfirst("an","dianosesan")
                        #= Returns numerical array of inidces
                           where the first occurrence happens 
                        =#
rango = findnext("an","dianosesan",4)
                        #= Returns numerical array of inidces
                           where the next occurrence happens
                           after given index 
                        =#
existencia = "a" ∈ "abc"# Checks if element is in string

# INTERPOLATION
#= 
Used to introduce variables into strings as ({s,f}printf)
Variables can be expressions if inside brackets 
=#
planet = "Earth"
interpolString = "Gretings from $planet, the $(1+2)rd planet!"






# ----------------------------------------
#                 ARRAYS
# ----------------------------------------
# CREATION
arr = [10, 20, 30, 40]
arrStr = ["aa","ee","i","oooo","uuu"]
arrMix = [10,"aa",["30",2.0]]
# ADDRESSING
# There is no need to care for UTF-8 problems (non-byte aligment)
# Numeration starts in 1 and ends in end
ee = arr[end]             # Last valid item from array
ee = arr[:]               # Whole array (copied)
ee = arr[2:4]             # Slice (copied)
# OPERATIONS
L = length(arr)           # Length
arr[1] = 50               # Modify single value
push!(arr,30)             # Insert element at the end
pushfirst!(arrMix,30)     # Insert element at the beginning
insert!(arrStr,2,"aaaaa") # Insert element at given index
append!(arr,[10 20])      # Append elements of array to other array
splice!(arr,3)            # Delete said entry and returns it
pop!(arrMix)              # Delete last entry and returns it
popfirst!(arrMix)         # Delete first entry and returns it
deleteat!(arrStr,2)       # Delete said entry
sort!(arr)                # Arrange in increasing order
arrSorted = sort(arr)     # Return ordered copy
thripled = arr.^3         # Perform operation on all elements
uStr = uppercase.(arrStr) # Apply function on all elements






# ----------------------------------------
#              CONTROL FLOW
# ----------------------------------------
# IF / ELSEIF / ELSE
if 3 > 0
    # Statements
elseif 3 < 0
    # Statements
else
    # Statements
end

# FOR
#   Numerical iteration
n = 0
for i in 1:4
    if n == 7
        continue
    else
        break
    end
end
#   String iteration
for caracter in "Me llamo Antonio"
    println(caracter)
end
#   Array iteration by element
a = [10, 20, 30, 40]
for i in a
    println(i)
end
#   Array iteration by index
for i in eachindex(a)
    println(a[i])
end

# WHILE
n = 0
while n ≥ -7
    n = n-1
    if n == 7
        continue
    else
        break
    end
end


# ----------------------------------------
#             COMMENTS AND DOCS
# ----------------------------------------
# COMMENTS
a = 1.0 # Inline
b = #= Midline and multi-line
comments =# 3.0

# DOCSTRINGS
#   Functions: before function. First line contains header, 
#              next paragraph a description. 
"""
funcionDocumentable(argumento1, argumento2)

Prints both arguments.
"""
function funcionDocumentable(argumento1, argumento2)
    println(argumento1)
    println(argumento2)
end




# ----------------------------------------
#                FUNCTIONS
# ----------------------------------------
#= Non-void functions return either:
   - What follows 'return'
   - The last evaluated expression
=#
# Return terminates the function. 
# It is good practice to signal if the function modifies the arguments
#   appending '!' to the end of the function name

function myNewFunction(numerito)
    println(string(numerito))
    resultado = "Todo perfecto."
    return resultado
end



# ----------------------------------------
#                  I/O
# ----------------------------------------
# USER INTERACTION
text = readline()


# ----------------------------------------
#                EXECUTION
# ----------------------------------------
#= 1. REPL: 
Typle 'julia' in cmd. 
Press 'Ctrl+D' to exit, 
press 'Ctrl+C' to abort long operations =#

#= 2. Script:
Type in cmd 'julia name_of_the_script.jl' =#


# ----------------------------------------
#                MACROS
# ----------------------------------------
# @svg executes a macro that draws an SVG picture
# @show stores the value of the variables passed and prints them
a = 1
b = 2
@show a b