## How to install Linux on Windows with WSL

https://learn.microsoft.com/en-us/windows/wsl/install

# Install cobc

## Using brew

brew install gnu-cobol

## Using APT

sudo apt install open-cobol

# Using cobc compiler

Most of the examples are possible to run in each section of material for COBOL. If you want to run the COBOL programs given, one needs to always compile them before running them. When compiling would lead to the creation of a executable file that you can run on your local machine.

## Most common case to create an executable

Use the `hello-world.cbl` as an example to validate that the compiler works for you correctly after installation.

The syntax is as follow:

`cobc file-name.cbl -x`

With the example of the `hello-world.cbl` file:

`cobc hello-world.cbl -x`

## When you want to include a subroutine in your program

Let's assume that you have two files, `main.cbl` and `util.cbl`. The first file, `main.cbl`, refers and wants to call logic in `util.cbl`, then one needs to do the following:

Firstly, compile the `util.cbl` with the following command:

`cobc util.cbl -c`

This will create file with an `.o` ending, in this case it would result in `util.o`.

Secondly, compile the `main.cbl` with the result from the previous step:

`cobc main.cbl util.o -x`

## How to execute a program

When the program has been compiled, it can easily be executed in the terminal using the following command: `./hello-world` or `./main`, or what the file name was called (without the `.cbl` ending).

# VS Code extension

I have been using the following extension for IntelliSense, highlighting, snippets, and code browsing for COBOL in VS Code.

https://marketplace.visualstudio.com/items?itemName=bitlang.cobol
