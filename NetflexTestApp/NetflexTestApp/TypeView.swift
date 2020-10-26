//
//  TypeView.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/10.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class TypeView: UIView {
//    let randomNumber: UInt32 = arc4random() % 10
    
    var userInfoDelegate: UserInfoViewControllerDelegate?
    
    let userInputNumber: String = ""
    
//    let typeA: TypeA = TypeA()
    
    lazy var typeTitleLabel: UILabel = {
        let typeTitleLabel: UILabel = UILabel()
        typeTitleLabel.layer.cornerRadius = 12
        typeTitleLabel.clipsToBounds = true
        typeTitleLabel.textAlignment = .center
        typeTitleLabel.backgroundColor = .gray
        typeTitleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        return typeTitleLabel
    }()
    
    lazy var typeNameLabel: UILabel = {
        let typeNameLabel: UILabel = UILabel()
        typeNameLabel.layer.cornerRadius = 12
        typeNameLabel.clipsToBounds = true
        typeNameLabel.textAlignment = .center
        typeNameLabel.backgroundColor = .gray
        typeNameLabel.font = UIFont.boldSystemFont(ofSize: 30)
//        typeNameLabel.text = "행동가형"
        return typeNameLabel
    }()
    
    lazy var luckNumberLabel: UILabel = {
        // 유저가 입력한 숫자에 randomNumber 더해서 넣어주는 레이블
        let luckNumberLabel: UILabel = UILabel()
        luckNumberLabel.layer.cornerRadius = 12
        luckNumberLabel.clipsToBounds = true
        luckNumberLabel.backgroundColor = .gray
        luckNumberLabel.font = UIFont.boldSystemFont(ofSize: 30)
        luckNumberLabel.textAlignment = .center
//        luckNumberLabel.text = "\(100 + randomNumber)"
        return luckNumberLabel
    }()
    
    lazy var luckNumberTitleLabel: UILabel = {
        let luckNumberTitleLabel: UILabel = UILabel()
        luckNumberTitleLabel.layer.cornerRadius = 12
        luckNumberTitleLabel.clipsToBounds = true
        luckNumberTitleLabel.backgroundColor = .clear
        luckNumberTitleLabel.font = UIFont.boldSystemFont(ofSize: 10)
        luckNumberTitleLabel.textAlignment = .center
        luckNumberTitleLabel.text = "Luck Number"
        return luckNumberTitleLabel
    }()
    
    
    override init(frame: CGRect) {
        super .init(frame: frame)
//        print(randomNumber)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        setupTypeTitleLabel()
        setupFavoriteNumberLabel()
        setupLuckNumberTitleLabel()
        setupTypeNameLabel()
    }
    
    private func setupTypeTitleLabel() {
        let guide = self.safeAreaLayoutGuide
        
        typeTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(typeTitleLabel)
        
        NSLayoutConstraint.activate([
            typeTitleLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 20),
            typeTitleLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 10),
            typeTitleLabel.widthAnchor.constraint(equalToConstant: 100),
            typeTitleLabel.heightAnchor.constraint(equalToConstant: 70),
        ])
    }
    
    private func setupFavoriteNumberLabel() {
        let guide = self.safeAreaLayoutGuide
        
        luckNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(luckNumberLabel)
        
        NSLayoutConstraint.activate([
            luckNumberLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 20),
            luckNumberLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -10),
            luckNumberLabel.widthAnchor.constraint(equalToConstant: 70),
            luckNumberLabel.heightAnchor.constraint(equalToConstant: 70),
        ])
    }
    
    private func setupLuckNumberTitleLabel() {
        let guide = self.luckNumberLabel.safeAreaLayoutGuide
        
        luckNumberTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.luckNumberLabel.addSubview(luckNumberTitleLabel)
        
        NSLayoutConstraint.activate([
            luckNumberTitleLabel.topAnchor.constraint(equalTo: guide.topAnchor),
            luckNumberTitleLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            luckNumberTitleLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            luckNumberTitleLabel.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
    
    private func setupTypeNameLabel() {
        let guide = self.safeAreaLayoutGuide
        
        typeNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(typeNameLabel)
        
        NSLayoutConstraint.activate([
            typeNameLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 20),
            typeNameLabel.leadingAnchor.constraint(equalTo: typeTitleLabel.trailingAnchor, constant: 10),
            typeNameLabel.trailingAnchor.constraint(equalTo: luckNumberLabel.leadingAnchor, constant: -10),
            typeNameLabel.heightAnchor.constraint(equalToConstant: 70),
        ])
    }
    

}
