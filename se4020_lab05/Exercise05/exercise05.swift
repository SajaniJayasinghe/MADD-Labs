
struct Weigh{
  var gram : Double {
    didSet{
      if gram < 0 {
        print("Negative values are not allowed")
        gram = oldValue
      }
    }
  }

  var pound : Double {
    set(pound){
      self.gram = pound * 453.592
    }

    get{
      return self.gram / 453.592
    }
  }

  var kilo : Double {
    set(kilo){
        self.gram = kilo * 1000.0
      }

      get {
        return self.gram / 1000.0
      }
    }

  init(gram : Double) {
    self.gram = gram
  }

  init(pound : Double){
    self.gram = pound * 453.592
  }

  init(kilo : Double) {
    self.gram = kilo * 1000.0
  }

}

var w1 = Weigh(kilo: 1.0)
print(w1.gram)
print(w1.pound)
print(w1.kilo)

w1.kilo = -2.0