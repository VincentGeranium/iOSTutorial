//
//  EachCityTableViewCell.swift
//  CoronaProject
//
//  Created by 김광준 on 2020/11/15.
//

import UIKit

class EachCityTableViewCell: UITableViewCell {
    
    static let cellIdentifier: String = "EachCityTableViewCell"
    
    lazy var gubunLabel: UILabel = {
        let gubunLabel: UILabel = UILabel()
        gubunLabel.textAlignment = .center
        gubunLabel.textColor = .black
        gubunLabel.layer.masksToBounds = true
        gubunLabel.layer.borderWidth = 1.0
        gubunLabel.layer.borderColor = UIColor.black.cgColor
        gubunLabel.layer.backgroundColor = UIColor.gray.cgColor
        gubunLabel.layer.cornerRadius = 8.0
        return gubunLabel
    }()
    
    lazy var createDtLabel: UILabel = {
        let createDtLabel: UILabel = UILabel()
        createDtLabel.textAlignment = .center
        createDtLabel.textColor = .black
        createDtLabel.layer.masksToBounds = true
        createDtLabel.numberOfLines = 0
        createDtLabel.layer.borderWidth = 1.0
        createDtLabel.layer.borderColor = UIColor.black.cgColor
        createDtLabel.layer.backgroundColor = UIColor.gray.cgColor
        createDtLabel.layer.cornerRadius = 8.0
        return createDtLabel
    }()
    
    lazy var stdDayLabel: UILabel = {
        let stdDayLabel: UILabel = UILabel()
        stdDayLabel.textAlignment = .center
        stdDayLabel.textColor = .black
        stdDayLabel.layer.masksToBounds = true
        stdDayLabel.numberOfLines = 0
        stdDayLabel.layer.borderWidth = 1.0
        stdDayLabel.layer.borderColor = UIColor.black.cgColor
        stdDayLabel.layer.backgroundColor = UIColor.gray.cgColor
        stdDayLabel.layer.cornerRadius = 8.0
        return stdDayLabel
    }()
    
    lazy var deathCntLabel: UILabel = {
        let deathCntLabel: UILabel = UILabel()
        deathCntLabel.textAlignment = .center
        deathCntLabel.textColor = .black
        deathCntLabel.layer.masksToBounds = true
        deathCntLabel.layer.borderWidth = 1.0
        deathCntLabel.layer.borderColor = UIColor.black.cgColor
        deathCntLabel.layer.backgroundColor = UIColor.gray.cgColor
        deathCntLabel.layer.cornerRadius = 8.0
        return deathCntLabel
    }()
    
    lazy var incDecLabel: UILabel = {
        let incDecLabel: UILabel = UILabel()
        incDecLabel.textAlignment = .center
        incDecLabel.textColor = .black
        incDecLabel.layer.masksToBounds = true
        incDecLabel.layer.borderWidth = 1.0
        incDecLabel.layer.borderColor = UIColor.black.cgColor
        incDecLabel.layer.backgroundColor = UIColor.gray.cgColor
        incDecLabel.layer.cornerRadius = 8.0
        return incDecLabel
    }()
    
    lazy var isolClearCntLabel: UILabel = {
        let isolClearCntLabel: UILabel = UILabel()
        isolClearCntLabel.textAlignment = .center
        isolClearCntLabel.textColor = .black
        isolClearCntLabel.layer.masksToBounds = true
        isolClearCntLabel.layer.borderWidth = 1.0
        isolClearCntLabel.layer.borderColor = UIColor.black.cgColor
        isolClearCntLabel.layer.backgroundColor = UIColor.gray.cgColor
        isolClearCntLabel.layer.cornerRadius = 8.0
        return isolClearCntLabel
    }()
    
    lazy var defCntLabel: UILabel = {
        let defCntLabel: UILabel = UILabel()
        defCntLabel.textAlignment = .center
        defCntLabel.textColor = .black
        defCntLabel.layer.masksToBounds = true
        defCntLabel.layer.borderWidth = 1.0
        defCntLabel.layer.borderColor = UIColor.black.cgColor
        defCntLabel.layer.backgroundColor = UIColor.gray.cgColor
        defCntLabel.layer.cornerRadius = 8.0
        return defCntLabel
    }()
    
    lazy var isolIngCntLabel: UILabel = {
        let isolIngCntLabel: UILabel = UILabel()
        isolIngCntLabel.textAlignment = .center
        isolIngCntLabel.textColor = .black
        isolIngCntLabel.layer.masksToBounds = true
        isolIngCntLabel.layer.borderWidth = 1.0
        isolIngCntLabel.layer.borderColor = UIColor.black.cgColor
        isolIngCntLabel.layer.backgroundColor = UIColor.gray.cgColor
        isolIngCntLabel.layer.cornerRadius = 8.0
        return isolIngCntLabel
    }()
    
    lazy var overFlowCntLabel: UILabel = {
        let overFlowCntLabel: UILabel = UILabel()
        overFlowCntLabel.textAlignment = .center
        overFlowCntLabel.textColor = .black
        overFlowCntLabel.layer.masksToBounds = true
        overFlowCntLabel.layer.borderWidth = 1.0
        overFlowCntLabel.layer.borderColor = UIColor.black.cgColor
        overFlowCntLabel.layer.backgroundColor = UIColor.gray.cgColor
        overFlowCntLabel.layer.cornerRadius = 8.0
        return overFlowCntLabel
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        if selected == true {
            self.selectionStyle = .none
            print("selected true")
        } else if selected == false {
            self.selectionStyle = .none
            print("selected false")
        }
    }
    
    
    private func addViews() {
        setupGubunLabel()
        setupCreateDtLabel()
        setupStdDayLabel()
        setupDeathCntLabel()
        setupIncDecLabel()
        setupIsolClearCntLabel()
        setupDefCntLabel()
        setupIsolIngCntLabel()
        setupOverFlowCntLabel()
    }
    
    private func setupGubunLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        gubunLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(gubunLabel)
        
        NSLayoutConstraint.activate([
//            gubunLabel.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
//            gubunLabel.centerYAnchor.constraint(equalTo: guide.centerYAnchor),
            gubunLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 35),
            gubunLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            gubunLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            gubunLabel.widthAnchor.constraint(equalToConstant: 70),
            gubunLabel.heightAnchor.constraint(equalToConstant: 80),

        ])
    }
    
    private func setupCreateDtLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        createDtLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(createDtLabel)
        
        NSLayoutConstraint.activate([
            createDtLabel.topAnchor.constraint(equalTo: gubunLabel.bottomAnchor, constant: 10),
            createDtLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            createDtLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.5, constant: -25),
            createDtLabel.heightAnchor.constraint(equalTo: createDtLabel.widthAnchor, multiplier: 0.8),
//            createDtLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            createDtLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupStdDayLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        stdDayLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(stdDayLabel)
        
        NSLayoutConstraint.activate([
            stdDayLabel.topAnchor.constraint(equalTo: gubunLabel.bottomAnchor, constant: 10),
//            stdDayLabel.leadingAnchor.constraint(equalTo: createDtLabel.trailingAnchor, constant: 20),
            stdDayLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            stdDayLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.5, constant: -25),
            stdDayLabel.heightAnchor.constraint(equalTo: stdDayLabel.widthAnchor, multiplier: 0.8),
//            stdDayLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupDeathCntLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        deathCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(deathCntLabel)
        
        NSLayoutConstraint.activate([
            deathCntLabel.topAnchor.constraint(equalTo: createDtLabel.bottomAnchor, constant: 10),
            deathCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            deathCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            deathCntLabel.widthAnchor.constraint(equalToConstant: 70),
            deathCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupIncDecLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        incDecLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(incDecLabel)
        
        NSLayoutConstraint.activate([
            incDecLabel.topAnchor.constraint(equalTo: deathCntLabel.bottomAnchor, constant: 10),
            incDecLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            incDecLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            incDecLabel.widthAnchor.constraint(equalToConstant: 70),
            incDecLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupIsolClearCntLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        isolClearCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(isolClearCntLabel)
        
        NSLayoutConstraint.activate([
            isolClearCntLabel.topAnchor.constraint(equalTo: incDecLabel.bottomAnchor, constant: 10),
            isolClearCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            isolClearCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            isolClearCntLabel.widthAnchor.constraint(equalToConstant: 70),
            isolClearCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupDefCntLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        defCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(defCntLabel)
        
        NSLayoutConstraint.activate([
            defCntLabel.topAnchor.constraint(equalTo: isolClearCntLabel.bottomAnchor, constant: 10),
            defCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            defCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            defCntLabel.widthAnchor.constraint(equalToConstant: 70),
            defCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupIsolIngCntLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        isolIngCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(isolIngCntLabel)
        
        NSLayoutConstraint.activate([
            isolIngCntLabel.topAnchor.constraint(equalTo: defCntLabel.bottomAnchor, constant: 10),
            isolIngCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            isolIngCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            isolIngCntLabel.widthAnchor.constraint(equalToConstant: 70),
            isolIngCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupOverFlowCntLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        overFlowCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(overFlowCntLabel)
        
        NSLayoutConstraint.activate([
            overFlowCntLabel.topAnchor.constraint(equalTo: isolIngCntLabel.bottomAnchor, constant: 10),
            overFlowCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            overFlowCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            overFlowCntLabel.widthAnchor.constraint(equalToConstant: 70),
            overFlowCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }


}
