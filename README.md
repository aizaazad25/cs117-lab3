# cs117-lab3

# 1. Assembly Reflections:
## What did you notice about registers and instructions?
Unlike high-level programming languages, assembly instructions operate directly on the registers, which are like the CPU's built-in storage. Every instruction reuires a register as a destination. 
In this simple calculator, 2 and 3 couldn't be added without moving them first into registers.
The instructions are mnemonics that are short and human-readable, for instance, mov copies data into registers.

## How is coding in assembly different from python?
Assembly language is low-level programming language that is tedious to learn, read and write. Writing in assembly takes much longer time. Even for something simple, like mov or add, every tiny step must be spelled out. Python is high-level programming language that has less tedious syntax as compared to assemby language.

# 2.Python reflections
## Why is python easier and faster for building the same project?
In python, the code is written in human like syntax so is easier to write and understand. Python codes are short beacause of built in libraries and functions. Moreover, python is portable.

## Which features of Python help abstraction(variables, functions, loops)?
functions help abstraction because they hide how a task is done and focus mainly on the implementation of the task. they promote ignoring unnecessary details which is the core concept of abstraction.


    \begin{table}[]
    \begin{tabular}{llll}
    \textbf{Feature} & \textbf{Assembly Example} & \textbf{Python Example} & \textbf{Notes}                                                                                                      \\
Variable storage & Register (EAX)            & x = 5                   & Python hides low-level memory. You can simply declare a variable in python without worrying about memory.         \\
Printing output  & INT 21h                   & print()                 & In assembly language, system has to be interrupted manually. In Python one function handles all the hidden details. \\
Arithmetic       & ADD AX, BX                & x + y                   & Assembly language requires explicit register operations. In python, these are hidden behind simple operators.               
       \end{tabular}
       \end{table}
