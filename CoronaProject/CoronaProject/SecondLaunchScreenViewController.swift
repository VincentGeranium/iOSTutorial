//
//  SecondLaunchScreenViewController.swift
//  CoronaProject
//
//  Created by 김광준 on 2020/11/21.
//

import UIKit

class SecondLaunchScreenViewController: UIViewController {
    
    private let titleLabel: UILabel = {
        let titleLabel: UILabel = UILabel()
        titleLabel.font = UIFont.systemFont(ofSize: 50, weight: UIFont.Weight.bold)
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        titleLabel.text = "Corona Total"
        return titleLabel
    }()
    
    private let indicatorView: UIActivityIndicatorView = {
        let indicatorView: UIActivityIndicatorView = UIActivityIndicatorView()
        indicatorView.style = .large
        indicatorView.color = .white
        return indicatorView
    }()
    
    private var dispatchWorkItemInstance: DispatchWorkItem?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        self.navigationController?.isNavigationBarHidden = true
        
        
        setupTitleLabel()
        setupIndicatorView()
        pushToMainVC()
        
        
    }
    
    private func setupTitleLabel() {
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            titleLabel.heightAnchor.constraint(equalToConstant: 70),
        ])
    }
    
    private func setupIndicatorView() {
        indicatorView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(indicatorView)
        
        NSLayoutConstraint.activate([
            indicatorView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            indicatorView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            indicatorView.widthAnchor.constraint(equalToConstant: 150),
            indicatorView.heightAnchor.constraint(equalToConstant: 150),
        ])
        
        indicatorView.startAnimating()
    }
    
    func pushVC() {
        indicatorView.stopAnimating()
        
        let rootVC = MainViewController()
        
        self.navigationController?.pushViewController(rootVC, animated: false)
    }
    
    func pushToMainVC() {
        dispatchWorkItemInstance?.cancel()
        dispatchWorkItemInstance = DispatchWorkItem {
            self.pushVC()
        }
        DispatchQueue.main.asyncAfter(deadline: .now(), execute: dispatchWorkItemInstance!)
    }
    
    

}
