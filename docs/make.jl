using Documenter
using JuliaHub101

makedocs(
    sitename = "JuliaHub 101",
    format = Documenter.HTML(),
    modules = [JuliaHub101],
    pages = [
        "Introduction" => "index.md"
        "Greetings" => "hello.md",
        "Math 101" => "math.md",
        "Fizz Buzz" => "fizzbuzz.md"
    ]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
#=deploydocs(
    repo = "<repository url>"
)=#
