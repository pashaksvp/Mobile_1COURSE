import UIKit

class ViewController: UIViewController {
    var blocks: [CodeBlock] = []
    var blockViews: [CodeBlockView] = []  // Сюда будем добавлять визуальные блоки
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Настроим UI (например, добавить блоки на экран)
        setupDraggableBlocks()
    }
    
    func setupDraggableBlocks() {
        // Создание и отображение перетаскиваемых блоков
        let block = CodeBlock(type: .variableDeclaration, content: "int a = 0")  // Передаем правильные параметры
        let blockView = CodeBlockView(block: block)
        
        // Добавляем на экран
        self.view.addSubview(blockView)
        
        // Настроим ограничения
        blockView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            blockView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            blockView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            blockView.widthAnchor.constraint(equalToConstant: 200),
            blockView.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        blockViews.append(blockView)  // Добавляем в массив для работы с ними
    }

    func executeAlgorithm() {
        let interpreter = Interpreter()
        
        // Пример использования подсветки ошибки
        let errorHandling = ErrorHandling()
        
        // Допустим, есть ошибка в первом блоке
        errorHandling.highlightError(in: blockViews[0])
        
        interpreter.executeCode(blocks)
    }
}
