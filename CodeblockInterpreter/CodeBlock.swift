// CodeBlock.swift
import Foundation

enum BlockType {
    case variableDeclaration
    case assignment
    case arithmeticOperation
    case conditional
}

class CodeBlock {
    var type: BlockType
    var content: String
    var connectedBlocks: [CodeBlock]?

    init(type: BlockType, content: String) {
        self.type = type
        self.content = content
        self.connectedBlocks = []
    }
}
