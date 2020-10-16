//
//  GreenTeamView.swift
//  observerNotiCenterTutorial
//
//  Created by 김광준 on 2020/10/16.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

class GreenTeamSymbolImageView: UIView {
    
    lazy var greenTeamImage: UIImageView = {
        let greenTeamImage: UIImageView = UIImageView()
        greenTeamImage.image = UIImage.init(named: "hulkSymbol")
        return greenTeamImage
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        setupGreenTeamImage()
    }
    
    private func setupGreenTeamImage() {
        let guide = self.safeAreaLayoutGuide
        
        greenTeamImage.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(greenTeamImage)
        
        NSLayoutConstraint.activate([
            greenTeamImage.topAnchor.constraint(equalTo: guide.topAnchor),
            greenTeamImage.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            greenTeamImage.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            greenTeamImage.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }
    
    
}
