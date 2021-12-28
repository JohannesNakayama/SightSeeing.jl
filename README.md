# SightSeeing.jl

Take your user on a tour through your package.

[DISCLAIMER: AT THE MOMENT, THIS PACKAGE IS HIGHLY EXPERIMENTAL. NOTHING MORE THAN A STUPID IDEA AT 11:39PM...]

[ALSO, THIS README WILL BE OUTDATED CONSTANTLY, BUT THE FOLLOWING CAPTURES THE GIST OF THIS PACKAGE.]

## The Gist of this Package

Most Julia packages have a basic workflow that is similar for every project which uses the package.
Many documentations include a minimal example that the user can execute to get an idea of how the package works.
`SightSeeing.jl` allows you to create this minimal example as in interactive REPL tool where the user can immediately experience it from the terminal.

The basic setup is as follows:

1. Create a `tutorial.jl` script in your `src/` directory.
2. Write and export a function `tutorial` that takes no arguments and than executes `include("tutorial.jl")`.

There are currently four macros that you can use for your walk-throughs [DEP]:

* `@explain`: simply takes a string where you provide context (can also take several strings)
* `@write_code`: output some code to the REPL as if the user was writing it to a script
* `@demonstrate`: takes a line of code as a String; simulates executing that code in the REPL
* `@ask_continue`: prompts the user to press any key to continue

An example file for `tutorial.jl` [DEP]:

```
using Random
@explain "The Random module is part of the Julia core."
@explain "It can be loaded as follows:"
@demonstrate "using Random"
@explain "The Random module provides all sorts of random number shizzl."
@explain "For example:"
@demonstrate "Random.rand()"
@explain "This draws a random number from a uniform distribution in the range [0, 1]."
```
