import UIKit

class VariableDeclarationView: UIView {
    var variables: [Variable] = []

    func addVariable(_ variable: Variable) {
        variables.append(variable)
        // обновление UI
    }
    
    func render() {
        // Отображение переменных на экране
    }
}
