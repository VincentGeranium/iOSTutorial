//
//  SelectionViewController.swift
//  observerNotiCenterTutorial
//
//  Created by 김광준 on 2020/10/14.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {
    
    static let selectionVC = SelectionViewController()
    
    let titleView: SelectionTitleView = {
        let titleView: SelectionTitleView = SelectionTitleView()
        
        return titleView
    }()
    
    let greenTeamSymbolButton: GreenTeamSymbolButtonView = {
        let greenTeamSymbolButton: GreenTeamSymbolButtonView = GreenTeamSymbolButtonView()
        return greenTeamSymbolButton
    }()
    
    let redTeamSymbolButton: RedTeamSymbolButtonView = {
        let redTeamSymbolButton: RedTeamSymbolButtonView = RedTeamSymbolButtonView()
        return redTeamSymbolButton
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
    }
    
    private func addViews() {
        setupTitleView()
        setupGreenTeamSymbolImageView()
        setupRedTeamSymbolImageView()
    }
    
    private func setupTitleView() {
        let guide = self.view.safeAreaLayoutGuide
        
        titleView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(titleView)
        
        NSLayoutConstraint.activate([
            titleView.topAnchor.constraint(equalTo: guide.topAnchor),
            titleView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            titleView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            titleView.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    private func setupGreenTeamSymbolImageView() {
        let guide = self.view.safeAreaLayoutGuide
        
        greenTeamSymbolButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(greenTeamSymbolButton)
        
        NSLayoutConstraint.activate([
            greenTeamSymbolButton.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            greenTeamSymbolButton.widthAnchor.constraint(equalToConstant: 150),
            greenTeamSymbolButton.heightAnchor.constraint(equalToConstant: 150),
            greenTeamSymbolButton.centerYAnchor.constraint(equalTo: guide.centerYAnchor, constant: -80)
        ])
    }
    
    private func setupRedTeamSymbolImageView() {
        let guide = self.view.safeAreaLayoutGuide
        
        redTeamSymbolButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(redTeamSymbolButton)
        
        NSLayoutConstraint.activate([
            redTeamSymbolButton.topAnchor.constraint(equalTo: greenTeamSymbolButton.bottomAnchor, constant: 80),
            redTeamSymbolButton.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            redTeamSymbolButton.widthAnchor.constraint(equalToConstant: 150),
            redTeamSymbolButton.heightAnchor.constraint(equalToConstant: 150),
        ])
    }

}
