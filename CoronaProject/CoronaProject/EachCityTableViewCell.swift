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
    
    lazy var localOccCntLabel: UILabel = {
        let localOccCntLabel: UILabel = UILabel()
        localOccCntLabel.textAlignment = .center
        localOccCntLabel.textColor = .black
        localOccCntLabel.layer.masksToBounds = true
        localOccCntLabel.numberOfLines = 0
        localOccCntLabel.layer.borderWidth = 1.0
        localOccCntLabel.layer.borderColor = UIColor.black.cgColor
        localOccCntLabel.layer.backgroundColor = UIColor.gray.cgColor
        localOccCntLabel.layer.cornerRadius = 8.0
        return localOccCntLabel
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
    
    lazy var createDtTitleLabel: UILabel = {
        let createDtTitleLabel: UILabel = UILabel()
        createDtTitleLabel.textAlignment = .center
        createDtTitleLabel.textColor = .black
        createDtTitleLabel.font = UIFont.monospacedSystemFont(ofSize: 18, weight: .semibold)
        createDtTitleLabel.text = "데이터 등록일시"
        createDtTitleLabel.layer.masksToBounds = true
        createDtTitleLabel.numberOfLines = 0
        createDtTitleLabel.layer.borderWidth = 1.0
        createDtTitleLabel.layer.borderColor = UIColor.black.cgColor
        createDtTitleLabel.layer.backgroundColor = UIColor.red.cgColor
        createDtTitleLabel.layer.cornerRadius = 8.0
        return createDtTitleLabel
    }()
    
    lazy var createDtDataLabel: UILabel = {
        let createDtDataLabel: UILabel = UILabel()
        createDtDataLabel.textAlignment = .center
        createDtDataLabel.textColor = .systemGray
        createDtDataLabel.font = UIFont.monospacedSystemFont(ofSize: 18, weight: .bold)
        createDtDataLabel.layer.masksToBounds = true
        createDtDataLabel.numberOfLines = 0
        createDtDataLabel.layer.borderWidth = 1.0
        createDtDataLabel.layer.borderColor = UIColor.black.cgColor
        createDtDataLabel.layer.backgroundColor = UIColor.red.cgColor
        createDtDataLabel.layer.cornerRadius = 8.0
        return createDtDataLabel
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
        setupCreateDtTitleLabel()
        setupCreateDtDataLabel()
        setupStdDayLabel()
        setupDefCntLabel()
        setupIncDecLabel()
        setupIsolIngCntLabel()
        setupIsolClearCntLabel()
        setupDeathCntLabel()
        setupLocalOccCntLabel()
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
            createDtLabel.heightAnchor.constraint(equalTo: createDtLabel.widthAnchor, multiplier: 0.6),
//            createDtLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            createDtLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupCreateDtTitleLabel() {
        createDtTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        createDtLabel.addSubview(createDtTitleLabel)
        
        NSLayoutConstraint.activate([
            createDtTitleLabel.centerXAnchor.constraint(equalTo: createDtLabel.centerXAnchor, constant: 0),
            createDtTitleLabel.topAnchor.constraint(equalTo: createDtLabel.topAnchor, constant: 10),
            createDtTitleLabel.widthAnchor.constraint(equalTo: createDtLabel.widthAnchor),
            createDtTitleLabel.heightAnchor.constraint(equalTo: createDtLabel.heightAnchor, multiplier: 0.3),
        ])
    }
    
    private func setupCreateDtDataLabel() {
        createDtDataLabel.translatesAutoresizingMaskIntoConstraints = false
        
        createDtLabel.addSubview(createDtDataLabel)
        
        NSLayoutConstraint.activate([
            createDtDataLabel.centerXAnchor.constraint(equalTo: createDtLabel.centerXAnchor, constant: 0),
            createDtDataLabel.topAnchor.constraint(equalTo: createDtTitleLabel.bottomAnchor, constant: 10),
            createDtDataLabel.widthAnchor.constraint(equalTo: createDtLabel.widthAnchor),
            createDtDataLabel.bottomAnchor.constraint(equalTo: createDtLabel.bottomAnchor, constant: -10),
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
            stdDayLabel.heightAnchor.constraint(equalTo: createDtLabel.heightAnchor)
//            stdDayLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupDefCntLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        defCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(defCntLabel)
        
        NSLayoutConstraint.activate([
            defCntLabel.topAnchor.constraint(equalTo: createDtLabel.bottomAnchor, constant: 10),
            defCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            defCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            deathCntLabel.widthAnchor.constraint(equalToConstant: 70),
            defCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupIncDecLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        incDecLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(incDecLabel)
        
        NSLayoutConstraint.activate([
            incDecLabel.topAnchor.constraint(equalTo: defCntLabel.bottomAnchor, constant: 10),
            incDecLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            incDecLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            incDecLabel.widthAnchor.constraint(equalToConstant: 70),
            incDecLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupIsolIngCntLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        isolIngCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(isolIngCntLabel)
        
        NSLayoutConstraint.activate([
            isolIngCntLabel.topAnchor.constraint(equalTo: incDecLabel.bottomAnchor, constant: 10),
            isolIngCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            isolIngCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            isolClearCntLabel.widthAnchor.constraint(equalToConstant: 70),
            isolIngCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupIsolClearCntLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        isolClearCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(isolClearCntLabel)
        
        NSLayoutConstraint.activate([
            isolClearCntLabel.topAnchor.constraint(equalTo: isolIngCntLabel.bottomAnchor, constant: 10),
            isolClearCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            isolClearCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            defCntLabel.widthAnchor.constraint(equalToConstant: 70),
            isolClearCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupDeathCntLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        deathCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(deathCntLabel)
        
        NSLayoutConstraint.activate([
            deathCntLabel.topAnchor.constraint(equalTo: isolClearCntLabel.bottomAnchor, constant: 10),
            deathCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            deathCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            isolIngCntLabel.widthAnchor.constraint(equalToConstant: 70),
            deathCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupLocalOccCntLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        localOccCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(localOccCntLabel)
        
        NSLayoutConstraint.activate([
            localOccCntLabel.topAnchor.constraint(equalTo: deathCntLabel.bottomAnchor, constant: 10),
            localOccCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            localOccCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            overFlowCntLabel.widthAnchor.constraint(equalToConstant: 70),
            localOccCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupOverFlowCntLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        overFlowCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(overFlowCntLabel)
        
        NSLayoutConstraint.activate([
            overFlowCntLabel.topAnchor.constraint(equalTo: localOccCntLabel.bottomAnchor, constant: 10),
            overFlowCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            overFlowCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            overFlowCntLabel.widthAnchor.constraint(equalToConstant: 70),
            overFlowCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }


}
