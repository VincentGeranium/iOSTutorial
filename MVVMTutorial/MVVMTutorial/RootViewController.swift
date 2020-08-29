//
//  ViewController.swift
//  MVVMTutorial
//
//  Created by 김광준 on 2020/08/29.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    var viewModel: RootViewModel! {
        didSet {
            self.view.backgroundColor = viewModel.user.backgroundColor
            navigationItem.title = "\(viewModel.user.name), \(viewModel.user.age)"
        }
    }
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Tap 'Fetch' to retreive the message"
        label.backgroundColor = .systemPink
        return label
    }()
    
    lazy var activityIndicatorView: UIActivityIndicatorView = {
        let indicatorView = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.medium)
        return indicatorView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setUpNavigation()
        setUpViews()
        
        let user = User(age: 30, name: "Jun", backgroundColor: .systemPink)
        viewModel = RootViewModel(user: user)
    }
    
    fileprivate func setUpNavigation() {
//        self.navigationItem.title = "Jun, 30"
        
        let resetBarButton = UIBarButtonItem(title: "Reset", style: .plain, target: self, action: #selector(resetBarButtonTapped))
        let fetchBarButton = UIBarButtonItem(title: "Fetch", style: .done, target: self, action: #selector(fetchBarButtonTapped))
        
        navigationItem.setLeftBarButton(resetBarButton, animated: false)
        navigationItem.setRightBarButton(fetchBarButton, animated: false)
    }
    
    @objc fileprivate func resetBarButtonTapped() {
        self.label.text = "Tap 'Fetch' to retreive the message"
    }
    
    @objc fileprivate func fetchBarButtonTapped() {
        
    }
    
    private func setUpViews() {
        setUpLable()
        setUpActivityIndicatorView()
    }
    
    private func setUpLable() {
        let guide = self.view.safeAreaLayoutGuide
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: guide.centerYAnchor),
        ])
        
        
    }
    
    private func setUpActivityIndicatorView() {
        let guide = self.view.safeAreaLayoutGuide
        
        activityIndicatorView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(activityIndicatorView)
        
        NSLayoutConstraint.activate([
            activityIndicatorView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 12),
            activityIndicatorView.centerXAnchor.constraint(equalTo: guide.centerXAnchor)
        ])
    }
    
    
}

