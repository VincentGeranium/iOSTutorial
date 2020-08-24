//
//  View.swift
//  MVCTutorial
//
//  Created by 김광준 on 2020/08/24.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class View: UIView {
    
    fileprivate let nameLabel: UILabel = {
        let nameLabel: UILabel = UILabel()
        nameLabel.backgroundColor = .gray
        nameLabel.textAlignment = .center
        nameLabel.textColor = .black
        return nameLabel
    }()
    
    fileprivate let nameTextField: UITextField = {
        let nameTextField: UITextField = UITextField()
        nameTextField.backgroundColor = .systemPink
        nameTextField.textColor = .white
        // 텍스트 필드의 플레이스 홀더 텍스트 컬러 변경 코드.
        nameTextField.attributedPlaceholder = NSAttributedString(string: "이름을 입력해주세요.", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        return nameTextField
    }()
    
    fileprivate  let sendButton: UIButton = {
        let sendButton: UIButton = UIButton()
        sendButton.setTitle("전송", for: .normal)
        sendButton.backgroundColor = .systemTeal
        sendButton.layer.borderWidth = 0.1
        sendButton.layer.borderColor = UIColor.black.cgColor
        sendButton.layer.cornerRadius = 7.0
        return sendButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setUpNameLabel()
        setUpNameTextField()
        setUpSendButton()
    }
    
    private func setUpNameLabel() {
        let guide = self.safeAreaLayoutGuide
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -10),
            nameLabel.heightAnchor.constraint(equalToConstant: 70),
        ])
    }
    
    private func setUpNameTextField() {
        let guide = self.safeAreaLayoutGuide
        
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(nameTextField)
        
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            nameTextField.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 10),
            nameTextField.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -10),
            nameTextField.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    private func setUpSendButton() {
        let guide = self.safeAreaLayoutGuide
        
        let width = (frame.size.width / 3)
        let height = (width) / 2
        
        sendButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(sendButton)
        
        NSLayoutConstraint.activate([
            sendButton.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20),
            sendButton.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            sendButton.widthAnchor.constraint(equalToConstant: width),
            sendButton.heightAnchor.constraint(equalToConstant: height),
        ])
        
        sendButton.addTarget(self, action: #selector(didTappedSendButton(_:)), for: .touchUpInside)
    }
    
    @objc private func didTappedSendButton(_ sender: UIButton) {
        if let name = nameTextField.text {
            let getName: GetName = GetName(name: name)
            nameLabel.text = getName.name
        }
    }
}
