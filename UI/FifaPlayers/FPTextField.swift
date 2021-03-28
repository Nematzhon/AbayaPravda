//
//  FPTextField.swift
//  FifaPlayers
//
//  Created by Rizayev Nematzhon on 3/28/21.
//

import UIKit
import SnapKit

class FPTextField: UITextField {
    init(text: String) {
        super.init(frame: .zero)
        self.text = text
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var textPadding = UIEdgeInsets(
        top: 8,
        left: 8,
        bottom: 8,
        right: 8
    )

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    private func setupUI() {
        backgroundColor = .cyan
        placeholder = "55"
        font = .boldSystemFont(ofSize: 24)
        
    }
}
