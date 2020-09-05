//
//  MainView.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/05.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    lazy var mainTitleLabel: UILabel = {
        let mainTitleLabel: UILabel = UILabel()
        mainTitleLabel.backgroundColor = .clear
        mainTitleLabel.textColor = UIColor.systemRed
        mainTitleLabel.text = "NBTI TEST"
        mainTitleLabel.textAlignment = NSTextAlignment.center
        mainTitleLabel.font = UIFont.systemFont(ofSize: 70, weight: .bold)
        return mainTitleLabel
    }()
    
    lazy var startButton: UIButton = {
        let startButton: UIButton = UIButton()
        startButton.backgroundColor = .clear
        startButton.layer.borderWidth = 1.0
        startButton.layer.borderColor = UIColor.white.cgColor
        startButton.layer.cornerRadius = 8.0
        startButton.setTitleColor(UIColor.systemRed, for: .normal)
        startButton.setTitle("S T A R T", for: .normal)
        return startButton
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
    
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        setupMainTitleLabel()
        setupStartButton()
        
    }
    
    private func setupMainTitleLabel() {
        let guide = self.safeAreaLayoutGuide
        
        mainTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(mainTitleLabel)
        
        NSLayoutConstraint.activate([
            mainTitleLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 100),
            mainTitleLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 10),
            mainTitleLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -10),
            mainTitleLabel.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    private func setupStartButton() {
        let guide = self.safeAreaLayoutGuide
        
        startButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(startButton)
        
        NSLayoutConstraint.activate([
            startButton.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -150),
            startButton.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            startButton.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 30),
            startButton.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -30),
            startButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}

