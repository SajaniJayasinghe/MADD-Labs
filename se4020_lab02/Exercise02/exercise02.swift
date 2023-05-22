//unwrap two optionial strings
var firstname: String? = "Sajani"
var lastname : String? = "Jayasinghe"

print("\(firstname!) \(lastname!)")

//optinal binding for two other strings

var first: String? = "Sajani"
var last:String? = "Jayasinghe"

if let firstname = first, let lastname = last{
  print("\(firstname) \(lastname)")
}else{
  print("First or last name is nil")
}
//set some name to nill and check if vaild name is printing or not 
first = nil
if let firstname = first, let lastname = last {
    print("\(firstname) \(lastname)")
} else {
    print("First or last name is nil!!!!")
}
