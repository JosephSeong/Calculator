class AddOperation {
    func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber + secondNumber)
    }
}

class SubtractOperation {
    func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber - secondNumber)
    }
}

class MultiplyOperation {
    func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber * secondNumber)
    }
}

class DivideOperation {
    func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber / secondNumber)
    }
}

class Calculator {
    private let addOperation: AddOperation
    private let subtractOperation: SubtractOperation
    private let multiplyOperation: MultiplyOperation
    private let divideOperation: DivideOperation

    init(addOperation: AddOperation,
         subtractOperation: SubtractOperation,
         multiplyOperation: MultiplyOperation,
         divideOperation: DivideOperation) {
        self.addOperation = addOperation
        self.subtractOperation = subtractOperation
        self.multiplyOperation = multiplyOperation
        self.divideOperation = divideOperation
    }

    func calculate(operation: String, firstNumber: Int, secondNumber: Int) -> Double {
        if operation == "+" {
            return addOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
            //return Double(firstNumber + secondNumber)
        }

        if operation == "-" {
            return subtractOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
            //return Double(firstNumber - secondNumber)
        }

        if operation == "*" {
            return multiplyOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
            //return Double(firstNumber * secondNumber)
        }

        if operation == "/" {
            return divideOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
            //return Double(firstNumber) / Double(secondNumber)
        }

//        if operation == "%" {
//            return Double(firstNumber % secondNumber)
//        }

        // 정확한 operation이 전달되지 않을 시 0을 리턴(nil을 리턴해도 됨)
        return 0
    }
}

let calculator = Calculator(
    addOperation: AddOperation(),
    subtractOperation: SubtractOperation(),
    multiplyOperation: MultiplyOperation(),
    divideOperation: DivideOperation()
)

let addResult = calculator.calculate(operation: "+", firstNumber: 5, secondNumber: 3)
let subtractResult = calculator.calculate(operation: "-", firstNumber: 8, secondNumber: 4)
let multiplyResult = calculator.calculate(operation: "*", firstNumber: 6, secondNumber: 2)
let divideResult = calculator.calculate(operation: "/", firstNumber: 10, secondNumber: 2)
//let remainderResult = calculator.calculate(operation: "%", firstNumber: 10, secondNumber: 3)

print("addResult: \(addResult)")
print("subtractResult: \(subtractResult)")
print("multiplyResult: \(multiplyResult)")
print("divideResult: \(divideResult)")
//print("remainderResult: \(remainderResult)")
