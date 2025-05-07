import UIKit

class CodeBlockView: UIView {
    var block: CodeBlock
    
    init(block: CodeBlock) {
        self.block = block
        super.init(frame: .zero)
        self.backgroundColor = .lightGray
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        // Настроим внешний вид блока
        let label = UILabel()
        label.text = block.content
        label.textAlignment = .center
        addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
