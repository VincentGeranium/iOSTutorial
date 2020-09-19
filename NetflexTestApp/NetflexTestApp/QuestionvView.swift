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
    
    lazy var questionTextView: UITextView = {
        var questionTextView: UITextView = UITextView()
        questionTextView.textAlignment = .center
//        questionTextView.vertical
        questionTextView.backgroundColor = .brown
        questionTextView.layer.cornerRadius = 12
        questionTextView.clipsToBounds = true
//        questionTextView.sizeToFit()
        questionTextView.font = UIFont.boldSystemFont(ofSize: 20)
        questionTextView.text = """
        나는 실패하고, 실패하고 또 실패했다.
        그것이 내가 성공한 이유다.
        - 마이클 조던
        
        수 백 번의 이상적인 생각보다
        한 번의 실행이 변화의 시작이다.
        -Sheryl Sandberg
        """
        return questionTextView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        setupQuestionTextView()
    }
    
    private func setupQuestionTextView() {
        let guide = self.safeAreaLayoutGuide
        
        questionTextView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(questionTextView)
        
        NSLayoutConstraint.activate([
            questionTextView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 110),
            questionTextView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
            questionTextView.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
//            questionTextView.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -160),
            questionTextView.heightAnchor.constraint(equalToConstant: 300),
        ])
        
    }
}
