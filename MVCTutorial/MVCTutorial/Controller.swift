//
//  ViewController.swift
//  MVCTutorial
//
//  Created by 김광준 on 2020/08/24.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class Controller: UIViewController {
    
    private let exampleView: View = {
        let exampleView = View()
        return exampleView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemPink
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setUpExampleView()
        
    }
    
    private func setUpExampleView() {
        let guide = self.view.safeAreaLayoutGuide
        
        exampleView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(exampleView)
        
        NSLayoutConstraint.activate([
            exampleView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 15),
            exampleView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 15),
            exampleView.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -15),
            exampleView.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -15),
        ])
    }
}

