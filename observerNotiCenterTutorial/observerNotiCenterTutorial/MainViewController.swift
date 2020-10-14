//
//  ViewController.swift
//  observerNotiCenterTutorial
//
//  Created by 김광준 on 2020/10/13.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainView: MainView = {
        let mainView: MainView = MainView()
        return mainView
    }()
    
    let mainButton: MainButton = {
        let mainButton: MainButton = MainButton()
        return mainButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
//        self.navigationController?.navigationBar.isHidden = true
//        self.navigationController?.pushViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
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
        
//        mainButton.mainButton.addTarget(self, action: #selector(didTappedButton(_:)), for: .touchUpInside)
    }
//
//        @objc private func didTappedButton(_ sender: UIButton) {
//            let selectionVC = SelectionViewController()
//            let mainViewVC = MainViewController()
//            self.navigationController?.pushViewController(selectionVC, animated: true)
//            print("didtapped btn")
//        }
}

