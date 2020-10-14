//
//  MainButton.swift
//  observerNotiCenterTutorial
//
//  Created by 김광준 on 2020/10/13.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

class MainButton: UIView {
    
    lazy var mainButton: UIButton = {
        let mainButton: UIButton = UIButton()
        mainButton.backgroundColor = .blue
        mainButton.layer.cornerRadius = 8.0
        mainButton.layer.borderWidth = 1.0
        mainButton.layer.borderColor = UIColor.white.cgColor
        mainButton.setTitleColor(.white, for: .normal)
        mainButton.setTitle("choose your team", for: .normal)
        mainButton.addTarget(self, action: #selector(didTappedButton(_:)), for: .touchUpInside)
        return mainButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        setupButton()
    }
    
    private func setupButton() {
        let guide = self.safeAreaLayoutGuide
        
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(mainButton)
        
        NSLayoutConstraint.activate([
            mainButton.topAnchor.constraint(equalTo: guide.topAnchor),
            mainButton.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            mainButton.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            mainButton.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -30),
        ])
    }
    
    
    @objc private func didTappedButton(_ sender: UIButton) {
        let mainVC: GetViewController = GetViewController(viewController: MainViewController())
        let selectionVC: GetViewController = GetViewController(viewController: SelectionViewController())
        
        if let mainNavigationController = mainVC.viewController?.navigationController {
            if let selectionViewController = selectionVC.viewController {
                mainNavigationController.pushViewController(selectionViewController, animated: true)
            }
        }
        
 
        
        print("didtapped btn")
        
        
    }
    
    
}