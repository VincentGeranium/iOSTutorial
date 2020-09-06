//
//  ViewController.swift
//  ProtocolDelegatePatternUsedStarWars
//
//  Created by 김광준 on 2020/09/07.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit
// Boss의 Delegate(위임)을 통해 데이터를 받아 표현하는 Intern과 같은 VC
class BaseScreen: UIViewController {
    
    lazy var mainImageView: UIImageView = {
        var mainImageView: UIImageView = UIImageView()
        mainImageView.backgroundColor = .clear
        return mainImageView
    }()
    
    lazy var nameLabel: UILabel = {
        var nameLabel: UILabel = UILabel()
        nameLabel.text = ""
        nameLabel.backgroundColor = .clear
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont.init(name: "Avenir Next", size: 26)
        nameLabel.font = UIFont.systemFont(ofSize: 26, weight: .heavy)
        nameLabel.textColor = .white
        return nameLabel
    }()
    
    lazy var chooseButton: UIButton = {
        let chooseButton: UIButton = UIButton()
        chooseButton.setTitle("Choose a Side", for: .normal)
        chooseButton.setTitleColor(.black, for: .normal)
        chooseButton.titleLabel?.font = UIFont.init(name: "Avenir Next", size: 20)
        chooseButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
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
            mainImageView.widthAnchor.constraint(equalToConstant: 325),
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
        // selectionScreenVC의 delegate를 받음.
        selectionScreenVC.sideSelectionDelegate = self
        present(selectionScreenVC, animated: true, completion: nil)
    }
}

extension BaseScreen: SideSelectionDelegate {
    // SelectionScreen에서 Delegate를 이용하여 각 버튼(imperialButton, rebelButton)의 이벤트에 따라 넘겨주는 데이터가 다르다.
    
    // 따로 didTapChoice를 사용할 필요 없음, delegate를 주었으므로 각 버튼(imperialButton, rebelButton)의 이벤트가 발생하면 각각의 데이터를 넘겨줌.
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        mainImageView.image = image
        nameLabel.text = name
        self.view.backgroundColor = color
    }
    
    
}

