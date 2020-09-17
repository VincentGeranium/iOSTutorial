//
//  ResultCollectionViewCell.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/09.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class ResultCollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifier: String = "ResultCollectionViewCell"
    
    lazy var videoImageView: UIImageView = {
        let videoImageView = UIImageView()
        videoImageView.image = UIImage.init(named: "빌어먹을세상따위")
        videoImageView.contentMode = .scaleAspectFill
        videoImageView.backgroundColor = .red
        videoImageView.clipsToBounds = true
        videoImageView.layer.cornerRadius = 12
        return videoImageView
    }()
    
    lazy var videoTitleLabel: UILabel = {
        let videoTitleLabel: UILabel = UILabel()
        videoTitleLabel.backgroundColor = .blue
        videoTitleLabel.text = "빌어먹을세상따위"
        videoTitleLabel.font = UIFont(name: "HelveticaNeue-CondensedBold", size: UIFont.systemFontSize)
        videoTitleLabel.layer.cornerRadius = 12
        videoTitleLabel.layer.borderWidth = 1
        videoTitleLabel.layer.borderColor = UIColor.clear.cgColor
        videoTitleLabel.textAlignment = .center
        videoTitleLabel.clipsToBounds = true
        return videoTitleLabel
    }()
    
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        self.backgroundColor = .green
        addCells()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addCells() {
        setupVideoImageView()
        setupVideoTitleLabel()
    }
    
    private func setupVideoImageView() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        videoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.addSubview(videoImageView)
        
        NSLayoutConstraint.activate([
            videoImageView.topAnchor.constraint(equalTo: guide.topAnchor),
            videoImageView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            videoImageView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            videoImageView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }
    
    private func setupVideoTitleLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        videoTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.videoImageView.addSubview(videoTitleLabel)
        
        NSLayoutConstraint.activate([
            videoTitleLabel.heightAnchor.constraint(equalToConstant: 30),
            videoTitleLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            videoTitleLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            videoTitleLabel.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }
    
}
