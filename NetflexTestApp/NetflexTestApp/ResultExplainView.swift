//
//  ResultExplainView.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/10.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class ResultExplainView: UIView {
    
    lazy var explainLabel: UILabel = {
        let explainTextView: UILabel = UILabel()
        explainTextView.textAlignment = .center
        explainTextView.backgroundColor = .brown
        explainTextView.lineBreakMode = NSLineBreakMode.byWordWrapping
        explainTextView.numberOfLines = 0
        explainTextView.layer.cornerRadius = 12
        explainTextView.clipsToBounds = true
        explainTextView.font = UIFont.boldSystemFont(ofSize: 20)
        explainTextView.text = """
        나는 실패하고, 실패하고 또 실패했다.
        그것이 내가 성공한 이유다.
        - 마이클 조던
        
        수 백 번의 이상적인 생각보다
        한 번의 실행이 변화의 시작이다.
        -Sheryl Sandberg
        """
        return explainTextView
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        setupExplainLabel()
    }
    
    private func setupExplainLabel() {
        let guide = self.safeAreaLayoutGuide
        
        explainLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(explainLabel)
        
        NSLayoutConstraint.activate([
            explainLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 10),
            explainLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
            explainLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
            explainLabel.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -10),
        ])
    }
    
}
