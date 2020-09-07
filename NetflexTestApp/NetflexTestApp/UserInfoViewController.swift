//
//  UserInfoViewController.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/07.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    lazy var mainView: UserInfoView = {
        var mainView: UserInfoView = UserInfoView()
        return mainView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .black
        
        self.navigationController?.navigationBar.isHidden = false
        
        addViews()
    }
    
    private func addViews() {
        setupUserInfoView()
        
    }
    
    private func setupUserInfoView() {
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

}
