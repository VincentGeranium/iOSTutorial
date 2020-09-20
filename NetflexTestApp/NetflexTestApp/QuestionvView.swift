//
//  QuestionvView.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/17.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

class QuestionView: UIView {
    
    lazy var questionTitle: UILabel = {
        let questionTitle: UILabel = UILabel()
        questionTitle.textAlignment = .center
        questionTitle.font = UIFont.boldSystemFont(ofSize: 25)
        questionTitle.text = "YES OR NO"
        questionTitle.backgroundColor = .brown
        questionTitle.layer.cornerRadius = 12
        questionTitle.clipsToBounds = true
        questionTitle.layer.borderColor = UIColor.white.cgColor
        questionTitle.layer.borderWidth = 1
        return questionTitle
    }()
    
    lazy var questionLabel: UILabel = {
        var questionLabel: UILabel = UILabel()
        questionLabel.font = UIFont.boldSystemFont(ofSize: 20)
        questionLabel.textAlignment = .center
        questionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        questionLabel.numberOfLines = 0
        questionLabel.backgroundColor = .brown
        questionLabel.layer.cornerRadius = 12
        questionLabel.clipsToBounds = true
        questionLabel.layer.borderColor = UIColor.white.cgColor
        questionLabel.layer.borderWidth = 1
        questionLabel.text = """
        나는 실패하고,\n실패하고 또 실패했다.\n그것이 내가 성공한 이유다.\n- 마이클 조던\n\n수 백 번의 이상적인 생각보다\n한 번의 실행이 변화의 시작이다.\n-Sheryl Sandberg
        """
        return questionLabel
    }()
    
    lazy var yesButton: UIButton = {
        let yesButton: UIButton = UIButton()
        yesButton.setButton(button: yesButton,
                            title: "YES",
                            buttonState: .normal,
                            titleColor: .systemGreen,
                            fontName: "Avenir Next",
                            fontSize: 20,
                            fontWeight: .heavy,
                            borderWidth: 1.0,
                            cornerRadius: 12,
                            backgroundColor: .black,
                            isEnabled: true,
                            borderColor: .init(srgbRed: 1, green: 1, blue: 1, alpha: 1))
        return yesButton
    }()
    
    lazy var noButton: UIButton = {
        let noButton: UIButton = UIButton()
        noButton.setButton(button: noButton,
                            title: "NO",
                            buttonState: .normal,
                            titleColor: .systemGreen,
                            fontName: "Avenir Next",
                            fontSize: 20,
                            fontWeight: .heavy,
                            borderWidth: 1.0,
                            cornerRadius: 12,
                            backgroundColor: .black,
                            isEnabled: true,
                            borderColor: .init(srgbRed: 1, green: 1, blue: 1, alpha: 1))
        return noButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        setupQuestionTitle()
        setupQuestionLabel()
        setupYesButton()
        setupNoButton()
    }
    
    private func setupQuestionTitle() {
        let guide = self.safeAreaLayoutGuide

        questionTitle.translatesAutoresizingMaskIntoConstraints = false

        self.addSubview(questionTitle)

        NSLayoutConstraint.activate([
            questionTitle.topAnchor.constraint(equalTo: guide.topAnchor, constant: 20),
            questionTitle.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
            questionTitle.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
            questionTitle.heightAnchor.constraint(equalToConstant: 70),
        ])
    }
    
    private func setupQuestionLabel() {
        let guide = self.safeAreaLayoutGuide
        
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(questionLabel)
        
        NSLayoutConstraint.activate([
            questionLabel.topAnchor.constraint(equalTo: questionTitle.bottomAnchor, constant: 40),
            questionLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
            questionLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
            questionLabel.heightAnchor.constraint(equalToConstant: 300),
        ])
    }
    
    private func setupYesButton() {
        let guide = self.safeAreaLayoutGuide
        
        yesButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(yesButton)
        
        NSLayoutConstraint.activate([
            yesButton.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 40),
            yesButton.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
            yesButton.widthAnchor.constraint(equalTo: questionTitle.widthAnchor, multiplier: 1/2, constant: -15),
            yesButton.heightAnchor.constraint(equalTo: questionTitle.heightAnchor, multiplier: 1),
        ])
        
        yesButton.addTarget(self, action: #selector(didTappedYesButton(_:)), for: .touchUpInside)
    }
    
    @objc fileprivate func didTappedYesButton(_ sender: UIButton) {
        print("yes btn tapped")
    }
    
    private func setupNoButton() {
        let guide = self.safeAreaLayoutGuide
        
        noButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(noButton)
        
        NSLayoutConstraint.activate([
            noButton.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 40),
            noButton.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
            noButton.widthAnchor.constraint(equalTo: questionTitle.widthAnchor, multiplier: 1/2, constant: -15),
            noButton.heightAnchor.constraint(equalTo: questionTitle.heightAnchor, multiplier: 1),
        ])
        
        noButton.addTarget(self, action: #selector(didTappedNoButton(_:)), for: .touchUpInside)
    }
    
    @objc fileprivate func didTappedNoButton(_ sender: UIButton) {
        print("no btn tapped")
    }
}
