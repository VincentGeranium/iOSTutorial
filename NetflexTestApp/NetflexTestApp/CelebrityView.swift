//
//  CelebrityView.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/11.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class CelebrityView: UIView {
    
    lazy var celebrityLabel: UILabel = {
        let celebrityLabel: UILabel = UILabel()
        celebrityLabel.backgroundColor = .white
        celebrityLabel.clipsToBounds = true
        celebrityLabel.layer.cornerRadius = 12
        celebrityLabel.textAlignment = .center
        celebrityLabel.text = "당신과 같은 취향을 가진 배우는"
        celebrityLabel.font = UIFont.boldSystemFont(ofSize: 19)
        return celebrityLabel
    }()
    
    lazy var leftCelebrityNameLabel: UILabel = {
          let leftCelebrityNameLabel: UILabel = UILabel()
          leftCelebrityNameLabel.backgroundColor = .white
          leftCelebrityNameLabel.clipsToBounds = true
          leftCelebrityNameLabel.layer.cornerRadius = 12
          leftCelebrityNameLabel.textAlignment = .center
          leftCelebrityNameLabel.text = "배두나"
          leftCelebrityNameLabel.font = UIFont.boldSystemFont(ofSize: 19)
          return leftCelebrityNameLabel
      }()
    
    lazy var rightCelebrityNameLabel: UILabel = {
          let rightCelebrityNameLabel: UILabel = UILabel()
          rightCelebrityNameLabel.backgroundColor = .white
          rightCelebrityNameLabel.clipsToBounds = true
          rightCelebrityNameLabel.layer.cornerRadius = 12
          rightCelebrityNameLabel.textAlignment = .center
          rightCelebrityNameLabel.text = "주지훈"
          rightCelebrityNameLabel.font = UIFont.boldSystemFont(ofSize: 19)
          return rightCelebrityNameLabel
      }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        setupCelebrityLabel()
        setupLeftCelebrityNameLabel()
        setupRightCelebrityNameLabel()
    }
    
    private func setupCelebrityLabel() {
        let guide = self.safeAreaLayoutGuide
        
        celebrityLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(celebrityLabel)
        
        NSLayoutConstraint.activate([
            celebrityLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 0),
            celebrityLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 10),
            celebrityLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -10),
            celebrityLabel.heightAnchor.constraint(equalTo: guide.heightAnchor, multiplier: 1/4)
        ])
    }
    
    private func setupLeftCelebrityNameLabel() {
        let guide = self.safeAreaLayoutGuide
        
        leftCelebrityNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(leftCelebrityNameLabel)
        
        NSLayoutConstraint.activate([
            leftCelebrityNameLabel.topAnchor.constraint(equalTo: celebrityLabel.bottomAnchor, constant: 10),
            leftCelebrityNameLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 10),
            leftCelebrityNameLabel.widthAnchor.constraint(equalTo: guide.widthAnchor, multiplier: 1/2, constant: -10),
            leftCelebrityNameLabel.heightAnchor.constraint(equalTo: guide.heightAnchor, multiplier: 1/2)
        ])
    }
    
    private func setupRightCelebrityNameLabel() {
        let guide = self.safeAreaLayoutGuide
        
        rightCelebrityNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(rightCelebrityNameLabel)
        
        NSLayoutConstraint.activate([
            rightCelebrityNameLabel.topAnchor.constraint(equalTo: celebrityLabel.bottomAnchor, constant: 10),
            rightCelebrityNameLabel.leadingAnchor.constraint(equalTo: leftCelebrityNameLabel.trailingAnchor, constant: 5),
            rightCelebrityNameLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -10),
            rightCelebrityNameLabel.heightAnchor.constraint(equalTo: guide.heightAnchor, multiplier: 1/2)
        ])
    }
    
    


}
