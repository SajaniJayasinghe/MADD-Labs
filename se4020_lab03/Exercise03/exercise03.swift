// function to return tuple 
func lab03 (data : [String]) -> (longest: String, shortest: String){

  // define variable
  var shortestData : String = data[0]
  var longestData : String = data[0]

  // find shortest string
  for i in data {
    if shortestData.count > i.count {
      shortestData = i
    }
  }
  
  // find longest string
  for i in data {
    if longestData.count < i.count {
      longestData = i
    }
  }
  return (longestData, shortestData)

}

var arr : [String] = ["Sajani" , "Nuwanthi", "Randima", "Aroshini", "Imaya", "Anne"]

print("\nEntered Data = \(arr)\n")

//Print result
print("\n------- Answers --------")
var result = lab03(data : arr)
print("Shortest string = \(result.shortest)\nLongest string = \(result.longest)")

// using inout parameters
func lab03Part02 (data : [String], longestString : inout String, shortestString : inout String){

  // define variable
  var shortestData : String = data[0]

  var longestData : String = data[0]

  // find shortest string
  for i in data {
    if shortestData.count > i.count {
      shortestData = i
    }
  }
  
  // find longest string
  for i in data {
    if longestData.count < i.count {
      longestData = i
    }
  }

 // Assing Values
  longestString = longestData
  shortestString = shortestData
  
}

// difine varible to stor outputs
var x : String = ""
var y : String  = ""

lab03Part02(data : arr, longestString: &x, shortestString: &y)

//Print Answers
print("\n-------- Answers with inout --------")
print("Shortest string = \(y)\nLongest string = \(x)")

// arrays with variadic parameters
func lab03Part03(data: String...) -> (shortest: String, longest: String)? {
// define variable
  var shortestData : String = data[0]
  var longestData : String = data[0]

  // find shortest string
  for i in data {
    if shortestData.count > i.count {
      shortestData = i
    }
  }
  
  // find longest string
  for i in data {
    if longestData.count < i.count {
      longestData = i
    }
  }
  return (shortestData, longestData)

}

//print the answer
if let result = lab03Part03(data: "Sajani" , "Nuwanthi", "Randima", "Aroshini", "Imaya", "Anne") {
    print("\n------- Answers using variadic parameters  -------")
    print("Shortest string: \(result.shortest)")
    print("Longest string: \(result.longest)")
}
