module JuliaHub101

export greet
export square, cube, mygcd
export fizzbuzz

"""
    greet()

## Welcome to JuliaHub 101

This function greets you to the best platform for Julia development.
The function is part of the `JuliaHub101.jl` package.
Registering packages on JuilaHub can unlock productivity and collaboration benefits.

## Examples

```julia-repl
julia> greet()
"Hello JuliaHub!"
```
"""
greet() = "Hello JuliaHub 101!"

"""
    square(x)

This function takes one parameter, ``x``, and returns its square, ``x^2``.

## Examples

```julia-repl
julia> square(2)
4

julia> square(4)
16
```
"""
square(x) = x^2

"""
    cube(x)

This function takes one parameter, ``x``, and returns its cube, ``x^3``.

## Examples

```julia-repl
julia> cube(2)
8
```
"""
cube(x) = x^3

"""
    mygcd(nums)

My function for finding the **g**reatest **c**ommon **d**ivisor of a set of numbers.

## Examples

```julia-repl
julia> mygcd((4, 8, 24))
4

julia> mygcd([6, 9, 18])
6
```
"""
mygcd = gcd ∘ collect ∘ extrema

"""
    fizzbuzz()

Simple program based on [Fizz buzz](https://en.wikipedia.org/wiki/Fizz_buzz) - a simple game
often used to teach division. Fizzbuzz is passed one number as an argument, and if that number
divisible by 3 then the string `"Fizz"` is returned. If the number is divisible by 5 then the
string `"Buzz"` is returned. If the number is divisible by 3 **and** 5 then the string `"FizzBuzz"`
is returned.

## Examples

```julia-repl
julia> fizzbuzz(15)
"FizzBuzz"

julia> fizzbuzz(16)
""

julia> fizzbuzz(5)
"Buzz"

julia> fizzbuzz(3)
"Fizz"
```
"""
function fizzbuzz(n)
    if n % 15 == 0
        return "FizzBuzz"
    elseif n % 3 == 0
        return "Fizz"
    elseif n % 5 == 0
        return "Buzz"
    else
        return ""
    end
end

end # module
