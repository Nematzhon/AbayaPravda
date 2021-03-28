//
//  FPButton.swift
//  FifaPlayers
//
//  Created by Rizayev Nematzhon on 3/28/21.
//

import UIKit
import SnapKit

class FPButton: UIButton {
    
    private let label: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 24)
        label.textColor = .white
        label.textAlignment = .center
        return label
    } ()
    
    init(text: String) {
        label.text = text
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(label)
        backgroundColor = .purple
        setupConstraints()
    }
    
    private func setupConstraints() {
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}
