//
//  MainView.swift
//  observerNotiCenterTutorial
//
//  Created by 김광준 on 2020/10/13.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class MainView: UIView {
    lazy var mainTitleLabel: UILabel = {
        let mainTitleLabel: UILabel = UILabel()
        mainTitleLabel.textAlignment = .center
        mainTitleLabel.font = UIFont.systemFont(ofSize: 70, weight: .bold)
        mainTitleLabel.backgroundColor = .red
        mainTitleLabel.textColor = .yellow
        mainTitleLabel.text = "MainVC"
        return mainTitleLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        setupMainView()
    }
    
    private func setupMainView() {
        let guide = self.safeAreaLayoutGuide
        
        mainTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(mainTitleLabel)
        
        NSLayoutConstraint.activate([
            mainTitleLabel.topAnchor.constraint(equalTo: guide.topAnchor),
            mainTitleLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            mainTitleLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            mainTitleLabel.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
        
    }
    
    
}
