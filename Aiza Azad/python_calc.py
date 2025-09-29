def add(x,y):
    print(x+y)

def sub(x,y):
    print(x-y)

def multiply(x,y):
    print(x*y)

def divide(x,y):
    if y== 0:
        print("Error")

    else:
        print(x/y)

def check_even_odd(num):
    if num%2 ==0:
        print("The number is even.")
    else:
        print("The number is odd.")

def percentage(x,y):
    if y== 0:
        print("Error")
    
    else:
        print(x/y *100)

while True:
    print("1.Add")
    print("2.Subtract")
    print("3.Multiply")
    print("4.Divide")
    print("5.Check even or odd")
    print("6.Percentage")
    print("7.Exit")

    choice= input("Enter your choice (1-7):")
    if choice == '1':
        x= float(input("Enter first number:"))
        y= float(input("Enter second number:"))
        add(x,y)

    elif choice == '2':
        x= float(input("Enter first number:"))
        y= float(input("Enter second number:"))
        sub(x,y) 

    elif choice == '3':
        x= float(input("Enter first number:"))
        y= float(input("Enter second number:"))
        multiply(x,y) 

    elif choice == '4':
        x= float(input("Enter first number:"))
        y= float(input("Enter second number:"))
        divide(x,y) 

    elif choice == '5':
        num= float(input("Enter a number:"))
        check_even_odd(num)

    elif choice == '6':
        x= float(input("Enter first number:"))
        y= float(input("Enter second number:"))
        percentage(x,y) 

    elif choice == '7':
        print("Exiting Calculator")
        break




    




