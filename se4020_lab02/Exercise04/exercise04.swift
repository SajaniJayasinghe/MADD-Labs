

// get input for the student ID
print("Enter the  Student ID : ", terminator: "")
let StudentID = readLine()

print("***** Enter GPA *****")

// declaring an empty array to store GPA
var GPA = [Float]()

// declaring an optional variable to get input for a gpa in a particular year
var gpa_one : Float?

// declaring a controllar variable to control the loop
var year : Int = 1

repeat{
  print("GPA of Year \(year) : ",terminator: "")
  gpa_one = Float(readLine()!)
  // check weather the gpa_one is nil or in an invalid range
  if gpa_one != nil, gpa_one! <= 4, gpa_one! >= 0 {
    //insert gpa to the array if valid
    GPA.append(gpa_one!)
    // incrementing the counter variable
    year += 1
  }else{
    // message for invalid input
    print("Invalid Input")
  }
} while year <= 4 // loop condition

// calculating the WGPA
let WGPA = GPA[1] * 0.2 + GPA[2] * 0.3 + GPA[3] * 0.5

// declaring the class variable to store class
let Class : String
let Class_if : String

// determinig the class using if else statements
if WGPA >= 3.7{
  Class_if = "First Class"
}else if WGPA >= 3.5{
  Class_if = "Second Upper Class"
}else if WGPA >= 3{
  Class_if = "Second Lower Class"
}else if WGPA >= 2{
  Class_if = "General Class"
}else{
  Class_if = "No Class"
}

// determinig the class using if switch
switch WGPA{
  case 2..<3 :
    Class = "General Class"
  case 3..<3.5 :
    Class = "Second Lower Class"
  case 3.5..<3.7 :
    Class = "Second Upper Class"
  case 3.7..<4 :
    Class = "First Class"
  default :
    Class = "No Class"
}

// printing values
print("Your Student ID : \(StudentID!) ,and your WGPA  is : \(WGPA)")
print("Your Degree Class is : \(Class)")
