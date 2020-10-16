//
//  YourTeamImageView.swift
//  observerNotiCenterTutorial
//
//  Created by 김광준 on 2020/10/17.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class YourTeamImageView: UIView {
    
    lazy var yourTeamImageView: UIImageView = {
        var yourTeamImageView: UIImageView = UIImageView()
        return yourTeamImageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        setupYourImageView()
    }
    
    private func setupYourImageView() {
        let guide = self.safeAreaLayoutGuide
        
        yourTeamImageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(yourTeamImageView)
        
        NSLayoutConstraint.activate([
            yourTeamImageView.topAnchor.constraint(equalTo: guide.topAnchor),
            yourTeamImageView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            yourTeamImageView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            yourTeamImageView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }
    
    
}
