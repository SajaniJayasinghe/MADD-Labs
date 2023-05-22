func add(no1 : Int, no2 : Int) -> Double {
  return Double(no1 + no2)
}

func mul(no1 : Int, no2 : Int) -> Double {
  return Double(no1 * no2)
}

func div(no1 : Int, no2 : Int) -> Double {
  return Double(no1 / no2)
}

func sub(no1 : Int, no2 : Int) -> Double {
  return Double(no1 - no2)
}

func calcFunc(_ operation: (Int, Int) -> Double, no1: Int, no2: Int) -> Double {
    return operation(no1, no2)
}

print(calcFunc(add, no1 : 10, no2 : 20))
print(calcFunc(mul, no1 : 10, no2 : 20))
print(calcFunc(div, no1 : 10, no2 : 20))
print(calcFunc(sub, no1 : 10, no2 : 20))
