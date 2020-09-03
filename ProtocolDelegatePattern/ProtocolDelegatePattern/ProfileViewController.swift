//
//  ViewController.swift
//  ProtocolDelegatePattern
//
//  Created by 김광준 on 2020/09/03.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit



class ProfileViewController: UIViewController {
    
    lazy var settingBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .done, target: self, action: #selector(settingBarButtonTapped))
    
    @objc fileprivate func settingBarButtonTapped() {
        let settingsVC = SettingsViewController()
        navigationController?.pushViewController(settingsVC, animated: true)
    }
    
    lazy var iconImageView: UIImageView = {
        let iconImageView: UIImageView = UIImageView()
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        return iconImageView
    }()
    
    lazy var nameLabel: UILabel = {
        let nameLabel: UILabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        return nameLabel
    }()
    
    lazy var infoLabel: UILabel = {
        let infoLabel: UILabel = UILabel()
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        infoLabel.textColor = UIColor.systemGray
        return infoLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        setupNavigation()
        setupView()
        loadDefaultProfile()
    }
    
    fileprivate func setupNavigation() {
        title = "Profile"
        navigationItem.setRightBarButton(settingBarButtonItem, animated: true)
    }
    
    fileprivate func setupView() {
        guard let view = view else { return }
        let guide = view.safeAreaLayoutGuide
        
        view.backgroundColor = UIColor.systemBackground
        
        view.addSubview(iconImageView)
        view.addSubview(nameLabel)
        view.addSubview(infoLabel)
        
        NSLayoutConstraint.activate([
            iconImageView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 16),
            iconImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 100),
            iconImageView.heightAnchor.constraint(equalToConstant: 100),
        ])
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 16),
            nameLabel.centerXAnchor.constraint(equalTo: iconImageView.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            infoLabel.centerXAnchor.constraint(equalTo: nameLabel.centerXAnchor),
        ])
    }
    
    fileprivate func loadDefaultProfile() {
        let defatultProfile = Profile(icon: "icon2", accentColor: UIColor.systemOrange, name: "Apple", info: "Builder of iPhones")
        UserDefaults.standard.set(2, forKey: kIconButton)
        UserDefaults.standard.set(4, forKey: kColorButton)
        apply(defatultProfile)
    }
    
    func apply(_ profile: Profile) {
        iconImageView.image = UIImage(named: profile.icon)?.withRenderingMode(.alwaysTemplate)
        iconImageView.tintColor = profile.accentColor
        nameLabel.text = profile.name
        infoLabel.text = profile.info
    }


}

