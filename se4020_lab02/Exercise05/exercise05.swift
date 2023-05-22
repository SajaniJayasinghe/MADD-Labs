//example for if else program 
let num1 = 20
let num2 = 3

if num1 > num2 {
    print("\(num1) is greater than \(num2)")
} else {
    print("\(num1) is less than or equal to \(num2)")
}

//example for switch case 
let grade = "A"

switch grade {
   case "A":
      print("Excellent")
   case "B":
      print("Good")
   case "C":
       print("Average")
   case "D":
       print("Below Average")
   default:
     print("Failed")
}

//example for using ranges 

let range = 1...10

for i in range {
    if i % 2 == 0 {
        print("\(i) is even")
    } else {
        print("\(i) is odd")
    }
}


//example for array 
var cars = ["Audi", "BMW", "Corolla", "Nissan"]


for car in cars {
  //print the all cars in array
    print(car)
}
//add new car to the array using append 
cars.append("KDH")
//after add some new car and print all cars 
print(cars)

//define display first car in array 
let firstcar = cars[0]
print(firstcar)

//print totals  cars in array 
let count = cars.count
print(count)
