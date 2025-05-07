import UIKit

class ErrorHandling {
    
    // Этот метод будет подсвечивать ошибку в виде блока кода
    func highlightError(in blockView: CodeBlockView) {
        // Изменяем цвет фона блока, чтобы подсветить ошибку
        blockView.backgroundColor = .red  // Подсветка красным цветом
    }

    // Этот метод будет показывать текст ошибки в UI
    func showError(message: String) {
        print("Ошибка: \(message)")
    }
}
