//
//  RedTeamSymbolButton.swift
//  observerNotiCenterTutorial
//
//  Created by 김광준 on 2020/10/16.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class RedTeamSymbolButtonView: UIView {
    
    let redNotiName = Notification.Name.init(rawValue: "Red")
    
    lazy var redTeamButton: UIButton = {
        let redTeamButton: UIButton = UIButton()
        redTeamButton.setImage(UIImage.init(named: "deadpoolSymbol"), for: .normal)
        return redTeamButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        setupRedTeamImage()
    }
    
    private func setupRedTeamImage() {
        let guide = self.safeAreaLayoutGuide
        
        redTeamButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(redTeamButton)
        
        NSLayoutConstraint.activate([
            redTeamButton.topAnchor.constraint(equalTo: guide.topAnchor),
            redTeamButton.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            redTeamButton.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            redTeamButton.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
        redTeamButton.addTarget(self, action: #selector(didTappedRedTeamButton(_:)), for: .touchUpInside)
    }
    
    @objc private func didTappedRedTeamButton(_ sender: UIButton) {
        
        print("didTappedRedTeamButton")
    }

}
