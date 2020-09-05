//
//  ViewController.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/05.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
   
    lazy var mainView: MainView = {
        let mainView: MainView = MainView()
        
        return mainView
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        
     
        addViews()
        setupButtonsAction()
    }
    
    private func addViews() {
        setupMainView()
        
    }
    
    private func setupMainView() {
        let guide = self.view.safeAreaLayoutGuide
        
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(mainView)
        
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: guide.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }
    
    private func setupButtonsAction() {
        mainView.startButton.addTarget(self, action: #selector(didTappedStartButton(_:)), for: .touchUpInside)
        
    }
    
    @objc func didTappedStartButton(_ sender: UIButton) {
        let questionVC = QuestionViewController()
        
        self.navigationController?.pushViewController(questionVC, animated: true)
    }
}

