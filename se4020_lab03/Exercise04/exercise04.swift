func display(no: Int) {
    print("Called display(no: Int)")
    print("The number is: \(no)")
}

func display(anotherNo: Int) {
    print("Called display(anotherNo: Int)")
    print("The number is: \(anotherNo)")
}

func display(no: Double) {
    print("Called display(no: Double)")
    print("The number is: \(no)")
}

func display(_ no: Double) {
    print("Called display(_ no: Double)")
    print("The number is: \(no)")
}

display(no: 10)
display(anotherNo: 20)
display(no: 3.14)
display(2.71)