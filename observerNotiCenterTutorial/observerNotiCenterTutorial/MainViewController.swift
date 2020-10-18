//
//  ViewController.swift
//  observerNotiCenterTutorial
//
//  Created by 김광준 on 2020/10/13.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    
    let mainButton: MainButton = {
        let mainButton: MainButton = MainButton()
        return mainButton
    }()
    
    let mainView: MainView = {
        let mainView: MainView = MainView()
        return mainView
    }()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        addViews()
    }
    
    private func addViews() {
        setupMainView()
        setupMainButton()
    }
    
    private func setupMainView() {
        let guide = self.view.safeAreaLayoutGuide
        
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(mainView)
        
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 20),
            mainView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 40),
            mainView.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -40),
            mainView.heightAnchor.constraint(equalToConstant: 200),
        ])
    }
    
    private func setupMainButton() {
        let guide = self.view.safeAreaLayoutGuide
        
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(mainButton)
        
        NSLayoutConstraint.activate([
            mainButton.heightAnchor.constraint(equalToConstant: 70),
            mainButton.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 40),
            mainButton.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -40),
            mainButton.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -20),
        ])
        

    }

}

