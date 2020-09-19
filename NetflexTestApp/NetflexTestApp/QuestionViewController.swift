//
//  QuestionViewController.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/05.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    lazy var questionView: QuestionView = {
        let questionView: QuestionView = QuestionView()
        questionView.backgroundColor = .systemGray
        return questionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        
        self.navigationController?.navigationBar.isHidden = false
        
        addViews()
    }
    
    private func addViews() {
        setupQuestionView()
    }
    
    private func setupQuestionView() {
        let guide = self.view.safeAreaLayoutGuide
        
        questionView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(questionView)
        
        NSLayoutConstraint.activate([
            questionView.topAnchor.constraint(equalTo: guide.topAnchor),
            questionView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            questionView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            questionView.bottomAnchor.constraint(equalTo: guide.bottomAnchor)
        ])
    }

}
