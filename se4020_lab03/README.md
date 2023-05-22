![lab](/resources/labslogo.png)
## <div align="center">Lab 03</div>

## Objectives:  
* Use XCode to develop two simple Projects
* Using Functions and Closures

## Exercise 0:

1. Login to your GitHub account
2. Run the following link to create Lab03 to your Github account [https://classroom.github.com/a/gs9WLLAj](https://classroom.github.com/a/1Oi-07p6)
3. You have to do the exercises given in the repository and commit and push your solutions into it.

## Exercise 1:

1. Go through the Lab Exercise 01 documents provided in the courseweb about Exercise01
2. Login to a Apple Mac using instructions provided
3. Follow the instructions provided in the Lab Exercise 01 Resource and complete the Lab
4. Use any approach that is comfortable to you to save the code you have written so that it can be pushed to your Lab03 Repo
5. Capture two screen shots and add to your repo of your simulated running application (iphone and ipad)
6. Commit and Push your code to the repository

## Exercise 2:

1. Go through the Lab Exercise 02 documents provided in the courseweb about Exercise02
2. Login to a Apple Mac using instructions provided
3. Follow the instructions provided in the Lab Exercise 02 Resource and complete the Lab
4. Use any approach that is comfortable to you to save the code you have written so that it can be pushed to your Lab03 Repo
5. Capture two screen shots and add to your repo of your simulated running application (iphone and ipad)
6. Commit and Push your code to the repository

## Exercise 3:

You can use replit.com or Swift Playground if you don't have access to a dedicated Apple Device for this Exercise

1. Write a function to find the shortest string and the longest string of a string array and ```return``` both.
2. Write another function to the same as in 1. but only using ```inout``` parameters
3. Write a third functions replacing arrays with variadic parameters instead
4. Commit your Solution in Exercise 03


## Exercise 4:

You can use replit.com or Swift Playground if you don't have access to a dedicated Apple Device for this Exercise

1. Implement the following overloaded functions, in each function display the number and also display some reference to the function being called
```
func display(no : Int)
func display(anotherNo : Int)
func display(no : Double)
func display(_ no: Double)
```
2. Test the four functions by calling them with appropriate arguments
3. Confirm the function below is conflicting with a signature of one of the four functions given above
```func test(no : Double) -> Double```
4. Commit your Solution in Exercise 04


## Exercise 5:

You can use replit.com or Swift Playground if you don't have access to a dedicated Apple Device for this Exercise

1.	Implement the following functions
```
func add(no1 : Int, no2 : Int) -> Double
func mul(no1 : Int, no2 : Int) -> Double
func div(no1 : Int, no2 : Int) -> Double
func sub(no1 : Int, no2 : Int) -> Double
```
2. Implement a function called calcFunc that can be called as follows
```
print(calcFunc(add, no1 : 10, no2 : 20))
print(calcFunc(mul, no1 : 10, no2 : 20))
print(calcFunc(div, no1 : 10, no2 : 20))
print(calcFunc(sub, no1 : 10, no2 : 20))
```
4. Commit your Solution in Exercise 05

## Exercise 6:

You can use replit.com or Swift Playground if you don't have access to a dedicated Apple Device for this Exercise

1.	Implement the following code discussed in class and try to understand how it works
```
func makeIncreament(_ amount : Int) -> () -> Int {
    var runningTotal = 0
    func increment() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return increment
}

var IncreamentByTen = makeIncreament(10)
print(IncreamentByTen())
print(IncreamentByTen())
print(IncreamentByTen())

var IncreamentByFive = makeIncreament(5)
print(IncreamentByFive())

print(IncreamentByTen())
print(makeIncreament(8)())
```
2. Commit your Solution in Exercise 06


