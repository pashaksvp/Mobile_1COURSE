import Foundation

enum ExpressionType {
    case constant(Int)
    case variable(Variable)
    case operation(ArithmeticOperation)
}

enum ArithmeticOperation {
    case addition
    case subtraction
    case multiplication
    case division
    case modulo
}

class Expression {
    var type: ExpressionType
    
    init(type: ExpressionType) {
        self.type = type
    }
}
