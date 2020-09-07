//
//  UserInfoView.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/07.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class UserInfoView: UIView {
    
    var userInfoDelegate: UserInfoViewControllerDelegate?
    
    lazy var titleLabel: UILabel = {
        let titleLabel: UILabel = UILabel()
        titleLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        titleLabel.text = "Netflix Taste Test."
        titleLabel.textColor = .systemRed
        titleLabel.textAlignment = .center
        titleLabel.backgroundColor = .clear
        return titleLabel
    }()
    
    lazy var nameTextField: UITextField = {
        var nameTextField: UITextField = UITextField()
        // placeholder 의 color 바꾸기.
        nameTextField.attributedPlaceholder = NSAttributedString.init(string: " 이름을 입력해 주세요.", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        nameTextField.backgroundColor = .white
        nameTextField.layer.borderWidth = 1
        nameTextField.layer.borderColor = UIColor.white.cgColor
        nameTextField.textColor = UIColor.white
        nameTextField.backgroundColor = .clear
        return nameTextField
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        setupTitleLabel()
        setupNameTextField()
    }
    
    private func setupTitleLabel() {
        let guide = self.safeAreaLayoutGuide
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 15),
            titleLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -15),
            titleLabel.heightAnchor.constraint(equalToConstant: 35),
        ])
    }
    
    private func setupNameTextField() {
        let guide = self.safeAreaLayoutGuide
        
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(nameTextField)
        
        NSLayoutConstraint.activate([
            nameTextField.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            nameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 70),
            nameTextField.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
            nameTextField.heightAnchor.constraint(equalToConstant: 35),
        ])
    }
    
}
