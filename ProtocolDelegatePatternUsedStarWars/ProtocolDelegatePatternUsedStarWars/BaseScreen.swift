//
//  ViewController.swift
//  ProtocolDelegatePatternUsedStarWars
//
//  Created by 김광준 on 2020/09/07.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class BaseScreen: UIViewController {
    
    lazy var mainImageView: UIImageView = {
        var mainImageView: UIImageView = UIImageView()
        mainImageView.backgroundColor = .clear
//        mainImageView.image = UIImage.init(named: "logo")
        return mainImageView
    }()
    
    lazy var nameLabel: UILabel = {
        var nameLabel: UILabel = UILabel()
        nameLabel.text = ""
        nameLabel.backgroundColor = .clear
        return nameLabel
    }()
    
    lazy var chooseButton: UIButton = {
        let chooseButton: UIButton = UIButton()
        chooseButton.setTitle("Choose a Side", for: .normal)
        chooseButton.setTitleColor(.black, for: .normal)
        chooseButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        chooseButton.backgroundColor = .white
        chooseButton.layer.borderWidth = 1
        chooseButton.layer.borderColor = UIColor.white.cgColor
        chooseButton.layer.cornerRadius = 25
        return chooseButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        print(chooseButton.frame.size.height / 2)
        addViews()
    }
    
    private func addViews() {
        setupMainImageView()
        setupNameLabel()
        setupChooseButton()
    }
    
    private func setupMainImageView() {
        let guide = self.view.safeAreaLayoutGuide
        
        mainImageView.image = UIImage(named: "logo")
        
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(mainImageView)
        
        NSLayoutConstraint.activate([
            mainImageView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 25),
            mainImageView.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -25),
            mainImageView.centerYAnchor.constraint(equalTo: guide.centerYAnchor, constant: -120),
            // Set aspect ratio Programmatically Creating Constraints
            mainImageView.widthAnchor.constraint(equalTo: mainImageView.heightAnchor, multiplier: 16/9),
        ])
    }
    
    private func setupNameLabel() {
        let guide = self.view.safeAreaLayoutGuide
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 15),
            nameLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
            nameLabel.heightAnchor.constraint(equalToConstant: 59),
        ])
    }
    
    private func setupChooseButton() {
        let guide = self.view.safeAreaLayoutGuide
        
        chooseButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(chooseButton)
        
        NSLayoutConstraint.activate([
            chooseButton.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            chooseButton.widthAnchor.constraint(equalToConstant: 260),
            chooseButton.heightAnchor.constraint(equalToConstant: 50),
            chooseButton.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -67),
        ])
        
        chooseButton.addTarget(self, action: #selector(didTappedChooseButton(_:)), for: .touchUpInside)
    }
    
    @objc func didTappedChooseButton(_ sender: UIButton) {
        let selectionScreenVC = SelectionScreen()
        present(selectionScreenVC, animated: true, completion: nil)
    }
    
    
}

