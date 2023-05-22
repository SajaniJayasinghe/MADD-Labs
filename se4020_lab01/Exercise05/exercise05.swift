//  calculate BMI
var weight : Double = 0.0
var height : Double = 0.0

print("Enter you Name : ", terminator: "");

if let name = readLine() {
    print("Enter you Weight  (kg) : ", terminator: "")
    
    weight = Double(readLine()!)!
    print("Enter you Height (m): ", terminator: "")
    
    height = Double(readLine()!)!
    let BMI = weight / (height * height)
   
    print("Hey \(name) Your BMI is : ",BMI,"kg/m^")
}
