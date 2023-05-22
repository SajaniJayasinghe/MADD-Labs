print("Enter the Student ID:" , terminator:"")
if let studentID = readLine() , !studentID.isEmpty{
         print("Enter the marks for the student (Enter -999 to stop):")
    
    var marks: [Int] = []
        while let input = readLine(), let mark = Int(input), mark != -999 {
        marks.append(mark)
    }
    let average = Double(marks.reduce(0, +)) / Double(marks.count)
         print("Student ID: \(studentID)")
         print("Average marks: \(average)")
} else {
    print("Invalid input")
}
