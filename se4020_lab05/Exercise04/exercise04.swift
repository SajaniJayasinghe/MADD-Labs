
class Marks {
  var mark1 : Double {
    didSet {
      if mark1 < 0 || mark1 > 100 {
        print("Invalid value \(mark1), \(oldValue) set again!")
        mark1 = oldValue
      }
    }
  }
  
  var mark2 : Double{
    didSet {
      if mark2 < 0 || mark2 > 100 {
        print("Invalid value \(mark2), \(oldValue) set again!")
        mark2 = oldValue
      }
    }
  }
  
  var mark3 : Double{
    didSet {
      if mark3 < 0 || mark3 > 100 {
        print("Invalid value \(mark3), \(oldValue) set again!")
        mark3 = oldValue
      }
    }
  }


  init(mark1 : Double, mark2 : Double, mark3 : Double){
    self.mark1 = mark1
    self.mark2 = mark2
    self.mark3 = mark3
  }

  func calAVG () -> Double {
    return (mark1 + mark2 + mark3) / 3.0
  }

  func giveGrade () {
    func genearateGrade (mark : Double) -> String {
      switch(mark) {
        case 0..<45 :
          return "F"
        case 45..<55 :
          return "C"
        case 55..<75 :
          return "B"
        case 75...100 :
          return "A"
        default : 
          return "Invalid mark"
      }
    }

    print("Subject one mark : \(genearateGrade(mark : mark1))")
    print("Subject two mark : \(genearateGrade(mark : mark2))")
    print("Subject three mark : \(genearateGrade(mark : mark3))")
  }
}

var st1 = Marks(mark1 : 80.0, mark2 : 70.0, mark3 : 50.0)
print(st1.calAVG())
st1.giveGrade()

print("\n==Check Ivalid value ==")
st1.mark3 = 500.0
st1.mark2 = -90.0