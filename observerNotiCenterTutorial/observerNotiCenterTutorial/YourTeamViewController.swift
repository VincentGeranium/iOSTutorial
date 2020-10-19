//
//  YourTeamViewController.swift
//  observerNotiCenterTutorial
//
//  Created by 김광준 on 2020/10/16.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class YourTeamViewController: UIViewController {
    
    lazy var yourTeamImageView: YourTeamImageView = {
        var yourTeamImageView: YourTeamImageView = YourTeamImageView()
        yourTeamImageView.backgroundColor = .white
        return yourTeamImageView
    }()
    
//    lazy var yourTeamTitleLabel: UILabel = {
//        var yourTeamTitleLabel: UILabel = UILabel()
//
//        return yourTeamTitleLabel
//    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .yellow
        
        addViews()
    }
    
    private func addViews() {
        setupYourTeamImageView()
        setupYourTeamTitleLabel()
        
    }
    
    private func setupYourTeamImageView() {
        let guide = self.view.safeAreaLayoutGuide
        
        yourTeamImageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(yourTeamImageView)
        
        NSLayoutConstraint.activate([
            yourTeamImageView.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            yourTeamImageView.centerYAnchor.constraint(equalTo: guide.centerYAnchor, constant: -80),
            yourTeamImageView.heightAnchor.constraint(equalToConstant: 150),
            yourTeamImageView.widthAnchor.constraint(equalToConstant: 150),
        ])
    }
    
    private func setupYourTeamTitleLabel() {
        
    }

}
