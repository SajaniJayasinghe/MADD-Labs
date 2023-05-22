//create function that return clause with no arguments
// _ variable Omit Labels from Function Arguments
func makeIncreament(_ amount : Int) -> () -> Int {
 //create variable to store running total
 var runningTotal = 0
 //this is inner function that going to increment running total by amount
 func increment() -> Int {
 runningTotal += amount
 return runningTotal
 }
 //return increment function
 return increment
}var IncreamentByTen = makeIncreament(10)
print(IncreamentByTen())
print(IncreamentByTen())
print(IncreamentByTen()) var IncreamentByFive = makeIncreament(5)
print(IncreamentByFive()) print(IncreamentByTen())
print(makeIncreament(8)())has context menuCompose