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
Hello JuliaHub!
```
"""
greet() = print("Hello JuliaHub!")

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
often used to teach division. If `fizzbuzz` is called with no arguments, then
the default range will be used (1-100).

## Examples

```julia-repl
julia> fizzbuzz(5)
1
2
Fizz
4
Buzz
```
"""
function fizzbuzz(n=100)
    for i in 1:n
        if i % 15 == 0
            println("FizzBuzz")
        elseif i % 3 == 0
            println("Fizz")
        elseif i % 5 == 0
            println("Buzz")
        else
            println(i)
        end
    end
end

end # module
