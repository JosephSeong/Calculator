class Calculator {
    func calculate(operation: String, firstNumber: Int, secondNumber: Int) -> Double {
        if operation == "+" {
            return Double(firstNumber + secondNumber)
        }

        if operation == "-" {
            return Double(firstNumber - secondNumber)
        }

        if operation == "*" {
            return Double(firstNumber * secondNumber)
        }

        if operation == "/" {
            return Double(firstNumber) / Double(secondNumber)
        }

        if operation == "%" {
            return Double(firstNumber % secondNumber)
        }

        // 정확한 operation이 전달되지 않을 시 0을 리턴(nil을 리턴해도 됨)
        return 0
    }
}

let calculator = Calculator()

let addResult = calculator.calculate(operation: "+", firstNumber: 5, secondNumber: 3)
let subtractResult = calculator.calculate(operation: "-", firstNumber: 8, secondNumber: 4)
let multiplyResult = calculator.calculate(operation: "*", firstNumber: 6, secondNumber: 2)
let divideResult = calculator.calculate(operation: "/", firstNumber: 10, secondNumber: 2)
let remainderResult = calculator.calculate(operation: "%", firstNumber: 10, secondNumber: 3)

print("addResult: \(addResult)")
print("subtractResult: \(subtractResult)")
print("multiplyResult: \(multiplyResult)")
print("divideResult: \(divideResult)")
print("remainderResult: \(remainderResult)")
