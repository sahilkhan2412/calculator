import Foundation
func calculate(_ a: Double, _ b: Double, operation: String) -> Double {
    switch operation {
    case "+":
        return a + b
    case "-":
        return a - b
    case "*":
        return a * b
    case "^":
        return power(a, Int(b))
    case "%":
        return percent(a, b)
    case "√":
        return squareRoot(a)
    case "/":
        if b == 0{
            print("Cannot divide by zero")
            return 0
        }
        return a / b
    default:
        print("Invalid Operation")
        return 0
    }
}
func runCalculator() {
    print("Enter first number:")
    let firstInput = readLine()
    guard let a = Double(firstInput!) else {
        print("Invalid number")
        return
    }
    var currentValue = a
    while true {
        print("Enter the Operand (+, -, *, /, ^, %, √) or = to quit:")
        let operation = readLine()!
        // Quit
        if operation == "=" {
            break
        }
        // Square Root
        if operation == "√" {
            currentValue = squareRoot(currentValue)
            print("Result: \(currentValue)")
        } else {
            print("Enter second number:")
            let secondInput = readLine()
            guard let b = Double(secondInput!) else {
                print("Invalid number")
                continue
            }
            currentValue = calculate(currentValue, b, operation: operation)
            print("Result: \(currentValue)")
        }
    }
}
    runCalculator()
    func power(_ base:Double ,_ exponent:Int )-> Double{
        var result = 1.0
        for _ in 1...exponent {
            result = result * base
        }
        return result
    }
    func percent(_ number:Double,_ percentage:Double)->Double{
        let  result = number * percentage / 100
        return result
    }
    func squareRoot(_ number: Double)->Double{
        return sqrt(number)
    }
