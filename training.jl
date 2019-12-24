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
#   Integer {Int8, Int16, Int32, Int64, Int128} ∈ Int, UInt
a = 8::Int64
#   Floating point: {Float16, Float32, Float64} ∈ Float
a = 1::Float64
#   Complex{T}
a = 6im
#   Nothing
n = nothing

# SCOPE
# Global
#   Indicate that it points to the global variable of that name
#   If mutable, not needed
#   It is good practice to declare them as constants in Main
#   They impact performance
global alastor = 0
# Constants
#   Indicate that the variable will no vary anymore
#   For immutable, it cannot change
#   For mutable, always points to the same place
const moody = 0
const a = [1,2]
a[1] = 4

# NAMING
a = 1.0
#    Type LaTeX equivalent (\varepsilon here) and press TAB
ε = 5
#    Some names have preassigned value
println(π) # 3.1415926

# PARSING
parse(Int64,"2")
parse(Float64,"3.1415")

# CASTING
string(3)
float(2)

# INFORMATION
# Know type
f = typeof(ε) # Returns interface of type
# Check type
a isa Float64 # returns Bool

# TYPE DECLARATION
x::Float64 = 100            # Declares a variable with defined type
function alas()::Float64    # Declares a function with defined type for output
    1.0
end

# PRECISION
typemin(Int16)               # Lowest number that type can represent
typemax(Int16)               # Highest number that type can represent
eps(Float64)                 # Machine precision of type
trunc(Int64,3.999)           # Truncation and return given type
round(Int32, 3.999)          # Round and return given type





# ----------------------------------------
#                OPERATORS
# ----------------------------------------
# ASSIGNMENT
#   =                        Assign
#                               It can be multiple if both sides
#                               have the same number of arguments
# x,y = y,x                  Swap
# a,b = 1,2                  Tuple assignment

# ARITHMETICS
#   +                        Add
#   -                        Substract
#   /                        Divide
#   \                        Inverse divide (a/b = b\a)
#   ^                        Power
#   %                        Remainder after division (≡ rem(x,y))
#   ÷                        Integer divide
# divrem()                   Quotient and remainder

# LOGICAL
#   !                        NOT
#   &&                       AND
#   ||                       OR

# BITWISE
#   ~                        Bitwise NOT
#   &                        Bitwise AND
#   |                        Bitwise OR
#   ⊻                        Bitwise XOR
#   >>>                      Logical shift right
#   >>                       Arithmetic shift right
#   <<                       Logical/Arithmetic shift left

# UPDATING OPERATORS
#   +=                       Increment by
#   -=                       Decrement by
#   *=                       Multiply by
#   *=                       Multiply by
#   /=                       Divide by
#   \=                       Inverse divide by
#   ÷=                       Integer divide by
#   %=                       Remainder after divided by
#   ^=                       To the power of
#   &=                       After bitwise AND
#   |=                       After bitwise OR
#   ⊻=                       After bitwise XOR
#   >>>=                     After logical shift right
#   >>=                      After lrithmetic shift right
#   <<=                      After logical/arithmetic shift left

# COMPARISON
#   ==                       equals (calling isequal() )
#                               For objects: define isequal(x,y)
#                                   as defining hash(x) == hash(y)
#   ≡                        same-object-equals
#                               1. Checks if same type
#                               2. If mutable, check addresses
#                               3. If immutable bits, check bitwise
#                               4. If immutable collection, check === on all elements
#   ===                      same-object-equals
#   is                       same-object-equals
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
# CHARACTER (Char)
#   They encode the Unicode 12.1 charset
a = 'A'

# STRINGS (String)
#=
- They are the same as arrays of Char
- However, non-ASCII value occupy more than a byte.
  Thus, adressing them cannot be done as usual if values in array are non-ASCII
- Strings are immutable:
    · z[1] = 'x' is forbidden.
    · (a = 'ba') == (b = 'ba')
    · (a = 'ba') === (b = 'ba')
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
t = split("La frasa 1") # Split String using spaces
t = split("E-io-s",'-') # Split String using delimiter

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
#               DICTIONARY
# ----------------------------------------
# Dict are hash-ordered, so lookup takes O(1) time
# Keys MUST BE HASHABLE
# CREATION
dictEmpty = Dict()       # Empty dictionary (types Any, Any)
dictNotEm = Dict("one" => "uno","two" => "dos", "three" => "tres")
                         # Non- empty dictionary
dict2 = [(1,"1"),(2,"2")]# Using tuples
dictEmpty["one"] = "uno" # Add entry in dictionary

# OPERATIONS
L = length(dictEmpty)    # Length (No. entries)
ks = keys(dictNotEm)     # Keys
vs = values(dictNotEm)   # Values




# ----------------------------------------
#                TUPLES
# ----------------------------------------
# A Tuple is a comma-separated list of values
# CREATION
a = 'a', 1, 4, "456"     # Created as list
b = (2,4,'t',[1 2])      # Created as list with parentheses
b = tuple(2,4,'t',[1 2]) # Created with function
v = ('a',)               # Tuple with a single element
t = tuple()              # Empty tuple

# OPERATIONS
# - Mostly the same as Array, but the elements are immutable
# - Comparison works from 1 to end.
#     If one is not the same, it stops looking
a1,a2,a3,a4 = a...       # Scatter / Splat

# PURPOSE
# - Perform better than arrays (CPU, memory)
# - Used for return multiple values
# - Used for unknown No. multiple arguments
# - USed for expanding (scattering) a tuple into several arguments

# NAMED TUPLES
x = (a=1,b=2)
b = x.a



# ----------------------------------------
#           STRUCTS AND OBJECTS
# ----------------------------------------
# IMMUTABLE STRUCT
#  - More efficient
#  - Inviolable
#  - Behaves as immutable
#  - When checked with ≡ and ===, returns true is same byte content
struct Estructura
    a                     # Attribute/Field
    b                     # Attribute/Field
end

# MUTABLE STRUCT
#  - Fields can be changed
#  - Functions that receive them must end with "!"
mutable struct EstructMut
    a                     # Attribute/Field
    b                     # Attribute/Field
end
E = Estructura(1,2)
println(string(E.x))
F = EstructMut(1,2)

# FUNCTIONS
a = deepcopy(E)           # Creates full (different) copy
b = fieldnames(EstructMut)# Get field names of struct
defi = fieldnames(E,:a)   # Check if fieldname exists

# TYPES
# Fields can be given explicit types
# struct Estructura
#     a::Float64            # Attribute/Field
#     b::Float64            # Attribute/Field
# end

# ABSTRACT TYPES
# Parent types to others. Enable polymorphism.
# If no parent type is given when creating a struct, 'Any' is assumed.
# When checking with 'isa' renders true.
# This allows defining functions for the abstract types so all children inherit.
abstract type Cacca end
struct Shit <: Cacca
    a
end
supertype(Shit)              # Returns direct parent type of given type


# ----------------------------------------
#                ITERATORS
# ----------------------------------------
# Objects that can be iterated on
a = [1,2,3]              # Lists
b = (1,2,3)              # Tuples
dictEmpty                # Dictionaries:
                         #  iterated as (key, value)
z = zip(a,b)             # Zip iterator, combines elementwise
                         # elements from given sequences until
                         # one of them is exhausted. There can
                         # be more than 2 sequences.
ennum = enumerate(a)     # Returns tuples (index,element)




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
#   Array iteration by index (RETURNS THE FASTEST PATH FOR ITRATION)
for i in eachindex(a)
    println(a[i])
end
#   Zip iteration (parentheses are compulsory)
for (thing1, thing2) in z
    println(thing1)
    println(thing2)
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

# TRY/CATCH
# Try code, catch possible exceptions, runs finally either way
try
    println("a")
catch exc
    println("b")
finally
    println("c")
end

# TERNARY OPERATOR
a = 1
a ≧ 1 ? println("Mayor") : println("Menor")




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

"""
Represents a rectangle.

fields: width, height, corner.
"""
struct Rectangle
    width
    height
    corner
end

# DOCUMENTATION
# Use packages Literate and Documenter





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

# CREATION
function myNewFunction(numerito)
    println(string(numerito))
    resultado = "Todo perfecto."
    return resultado
end

# MULTIPLE INPUTS/RETURNS
#=  Multiple input
If a tuple contains all arguments,
instead of manually assign all the arguments
=#
#= Multiple output
Returning a tuple and assigning it at the output
=#
#= Unknown No. of inputs (gathering, slurping)
A parameter name ending in '...'
It can be called anything, but it is usual 'args'
=#
#= Multiple input from one variable (scattering, splattering)
If all needed inputs are contained in a tuple, they
can be splitted into several different arguments
using '...' after the tuple in the call to
the function.
=#
numeritos = (1,2,3)
function funcionMultiple(a,b,c,agg...)
    println(a)
    println(b)
    println(c)
    println(agg)
end
funcionMultiple(numeritos...,"a","b",3)

# METHODS
# A method is a function with a defined header:
#   not all types are allowed
function increment(time::Int64, seconds::Int64)
    println(string(time))
    println(string(seconds))
end
# If followed by a type definition, the function is only allowed to return
# said type. (It improves speed?)
methods(increment)               # Show all methods called 'increment'
                                 #   and their signature.

# DEFAULT
# Use default values for variable arguments if not given
function faF(a=1,b=2)
    println(a)
    println(b)
end

# CONSTRUCTORS
# Functions that create objects. They can be defined:
#  - Outside the structs (outer constructors)
#  - Within the structs (inner constructors)
# Inner constructors allow enforcing conditions on arguments, or allow defaults
mutable struct Cosa
    a
    b
    function Cosa(a=1::Int64,b=2::Int64)
        @assert(a<b,"a needs to be smaller than b")
        cosa = new()         # Function 'new()' creates a new object of the type
        cosa.a = a           #   in the struct. This function is only available
        cosa.b = b           #   within the struct.
        cosa
    end
end

# COMPACT FUNCTIONS
# For math mostly, defined in quick way
f(x,y) = x^y

# ANONYMOUS FUNCTIONS
# Defined without a name. Given as arguments for other functions (e.g.: plot)
x -> x^2 + 2x -1             # No name for the function
function (x)
    x^2 + 2x -1              # No name for the function
end

# NAMED ARGUMENTS
# Define optional arguments using a different order.
# Semicolon is needed when defining between keywork and sequential arguments.
# Semicolon is not needed when calling.
function arsagHan (a, b; style="uno", lineType="dos")

end




# ----------------------------------------
#                  I/O
# ----------------------------------------
# USER INTERACTION
text = readline()
arc = "test.txt"
# FILES
cwd = pwd()                  # Get working directory
apath = abspath(arc)         # Get absolute path
checker = ispath(arc)        # Check if exists
checker = isdir(arc)         # Check if directory
checker = isfile(arc)        # Check if file
tree = readdir(cwd)          # Array with contents of argument
                             # Use 'isdir' to avoid errors
pcomplete = joinpath(cwd,arc)# Join dir to file to get
                             # full path

# FILE OPENING
fout = open("test.txt","w")  # Open for writing
                             # CLEARS PREVIOUS CONTENT
fout = open("test.txt")

# FILE WRITING
write(fout,"A string to be written\n")
                             # Write argument in file. ALWAYS A STRING.
print(fout,"A string $numeritos")
                             # Use 'print' capabilities
# @printf is also available (see MACROS)

# DATABASES: see online. Also SERIALIZATION

# SHELL INTERACTION
cmd = `git pull`             # Command for system shell. Use backticks
run(cmd)                     # Run command
                             #   Throws exception if shell ends badly.
a = read(cmd, String)        # Read output of command



# ----------------------------------------
#                EXECUTION
# ----------------------------------------
#= REPL
Typle 'julia' in cmd.
Press 'Ctrl+D' to exit,
press 'Ctrl+C' to abort long operations
=#

#= SCRIPT
Type in cmd 'julia name_of_the_script.jl'
=#


# ----------------------------------------
#       SCRIPTS, MODULES AND PACKAGES
# ----------------------------------------
# SCRIPTS
# A file with Julia commands is a script.
# When called, it uses the same variable workspace as the caller.
include("script.jl")         # Execute content of script.


# MODULES
# A block that avoids naming conflicts because it's outside the variable
# workspace of the caller.
module ModuleName
    export yesExport, noExport    # Exports function to caller so it can be used
                             # without need of using 'dot-addressing'.

    function yesExport(argumentos)
        println(argumentos)  # Executable part of function
    end
    function noExport(args)
        println(args)        # Executable part of function
    end
end
using ModuleName             # Use exports of module
import ModuleName            # Use specific variable/function, dot-addressing



# ----------------------------------------
#               PARALLELISM
# ----------------------------------------
# TASKS
# A task is a Control structure that passes cooperatively control without
# returning. Implemented as a function with a Channel object as first argument.
# A Channel passes values from function to the callee.




# ----------------------------------------
#        USEFUL MODULES AND PACKAGES
# ----------------------------------------
# Literate
# Documenter
# Random
# https://github.com/JuliaCollections
# Profile
# Optim
# BlackBoxOptim
# LsqFit
# Manifolds


# ----------------------------------------
#                 BASE
# ----------------------------------------
# SHOW
# Prints in console. Use multiple dispatch to add user-defined structs
function Base.show(io::IO, cosa::Cosa)
    print("a = $(cosa.a), b = $(cosa.b)")
end

# ARITHMETIC
# If binary operator, define both ways (a+b and b+a)
# Base.+
# Base.-
# Base.*
# Base.<
# Etc...


# ----------------------------------------
#                MACROS
# ----------------------------------------
# @assert checks if something is true. If not, exception
# @test is used for unit testing
#   - If OK, "Test Passed"
#   - If not, "Test Failed"
# @test a ≈ b (\approx) tests equallity on floating point, supports tolerance.
#   It is the same as @test isapprox(a,b). This function supports tolerance
# @svg executes a macro that draws an SVG picture
# @show stores the value of the variables passed and prints them
# @which returns the kind of method used for an expression
# @printf uses C printing to file or console
# @inbounds disables bounds checking for arrays, making software faster.
    # Use this for numerical software
cond1 = true
cond2 = true
@assert(cond1 && cond2, "String for failure")
@test cond1 == cond2
a = 1
b = 2
@show a b
