//
//  GreenTeamView.swift
//  observerNotiCenterTutorial
//
//  Created by 김광준 on 2020/10/16.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

class GreenTeamSymbolButtonView: UIView {
    
    
    let greenNotiName = Notification.Name.init(rawValue: "Green")
    
    lazy var greenTeamButton: UIButton = {
        let greenTeamButton: UIButton = UIButton()
        greenTeamButton.setImage(UIImage.init(named: "hulkSymbol"), for: .normal)
        return greenTeamButton
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
        
        greenTeamButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(greenTeamButton)
        
        NSLayoutConstraint.activate([
            greenTeamButton.topAnchor.constraint(equalTo: guide.topAnchor),
            greenTeamButton.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            greenTeamButton.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            greenTeamButton.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
        greenTeamButton.addTarget(self, action: #selector(didTappedGreenTeamButton(_:)), for: .touchUpInside)
    }
    
    @objc private func didTappedGreenTeamButton(_ sender: UIButton) {
        let yourTeamVC = YourTeamViewController()
        SelectionViewController.selectionVC.present(yourTeamVC, animated: true, completion: nil)
        print("didTappedGreenTeamButton")
    }
    
}
