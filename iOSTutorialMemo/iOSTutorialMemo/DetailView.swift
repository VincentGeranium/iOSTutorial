//
//  DetailView.swift
//  iOSTutorialMemo
//
//  Created by 김광준 on 2020/08/28.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class DetailView: UIView {
    
    let titleLabel: UILabel = {
        let titleLabel: UILabel = UILabel()
        titleLabel.backgroundColor = .systemRed
        return titleLabel
    }()
    
    let contentsLabel: UILabel = {
        let contentsLabel: UILabel = UILabel()
        contentsLabel.backgroundColor = .systemBlue
        return contentsLabel
    }()
    
    let imageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.backgroundColor = .systemPink
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpTitleLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpTitleLabel() {
        let guide = self.safeAreaLayoutGuide
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 21),
            titleLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
        ])
    }
    
}
