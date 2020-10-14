//
//  SelectionTitleView.swift
//  observerNotiCenterTutorial
//
//  Created by 김광준 on 2020/10/14.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

class SelectionTitleView: UIView {
    
    lazy var titleLabel: UILabel = {
        let titleLabel: UILabel = UILabel()
        titleLabel.textAlignment = .center
        titleLabel.textColor = .yellow
        titleLabel.font = UIFont.init(name: "Avenir Next", size: 26.0)
//        titleLabel.font.
        titleLabel.backgroundColor = .red
        titleLabel.text = "Choose your team"
        return titleLabel
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        setupTitleLabel()
    }
    
    private func setupTitleLabel() {
        let guide = self.safeAreaLayoutGuide
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 35),
            titleLabel.widthAnchor.constraint(equalToConstant: 256),
            titleLabel.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 35),
        ])
    }
}
