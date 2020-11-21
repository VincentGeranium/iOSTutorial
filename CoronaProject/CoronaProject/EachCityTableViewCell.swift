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
        gubunLabel.textColor = .white
        gubunLabel.font = UIFont.monospacedSystemFont(ofSize: 27, weight: .bold)
        gubunLabel.layer.masksToBounds = true
        gubunLabel.layer.borderWidth = 1.0
        gubunLabel.layer.borderColor = UIColor.systemGray.cgColor
        gubunLabel.layer.backgroundColor = UIColor.init(red: 0.110, green: 0.105, blue: 0.125, alpha: 1.0).cgColor
        gubunLabel.layer.cornerRadius = 8.0
        return gubunLabel
    }()
    
    
    lazy var createDtLabel: UILabel = {
        let createDtLabel: UILabel = UILabel()
        createDtLabel.textAlignment = .center
        createDtLabel.layer.masksToBounds = true
        createDtLabel.numberOfLines = 0
        createDtLabel.layer.borderWidth = 1.0
        createDtLabel.layer.borderColor = UIColor.systemGray.cgColor
        createDtLabel.layer.backgroundColor = UIColor.init(red: 0.110, green: 0.105, blue: 0.125, alpha: 1.0).cgColor
        createDtLabel.layer.cornerRadius = 8.0
        return createDtLabel
    }()
    
    lazy var createDtTitleLabel: UILabel = {
        let createDtTitleLabel: UILabel = UILabel()
        createDtTitleLabel.textAlignment = .center
        createDtTitleLabel.textColor = .white
        createDtTitleLabel.font = UIFont.monospacedSystemFont(ofSize: 18, weight: .semibold)
        createDtTitleLabel.text = "통계 데이터 등록 일시"
        createDtTitleLabel.layer.masksToBounds = true
        createDtTitleLabel.numberOfLines = 0
//        createDtTitleLabel.layer.borderWidth = 1.0
//        createDtTitleLabel.layer.borderColor = UIColor.systemGray.cgColor
//        createDtTitleLabel.layer.backgroundColor = UIColor.init(red: 0.110, green: 0.105, blue: 0.125, alpha: 1.0).cgColor
//        createDtTitleLabel.layer.cornerRadius = 8.0
        return createDtTitleLabel
    }()
    
    lazy var createDtDataLabel: UILabel = {
        let createDtDataLabel: UILabel = UILabel()
        createDtDataLabel.textAlignment = .center
        createDtDataLabel.textColor = .white
        createDtDataLabel.font = UIFont.monospacedSystemFont(ofSize: 18, weight: .bold)
        createDtDataLabel.layer.masksToBounds = true
        createDtDataLabel.numberOfLines = 0
//        createDtDataLabel.layer.borderWidth = 1.0
//        createDtDataLabel.layer.borderColor = UIColor.systemGray.cgColor
//        createDtDataLabel.layer.backgroundColor = UIColor.init(red: 0.110, green: 0.105, blue: 0.125, alpha: 1.0).cgColor
//        createDtDataLabel.layer.cornerRadius = 8.0
        return createDtDataLabel
    }()
    
    lazy var stdDayLabel: UILabel = {
        let stdDayLabel: UILabel = UILabel()
        stdDayLabel.layer.masksToBounds = true
        stdDayLabel.numberOfLines = 0
        stdDayLabel.layer.borderWidth = 1.0
        stdDayLabel.layer.borderColor = UIColor.systemGray.cgColor
        stdDayLabel.layer.backgroundColor = UIColor.init(red: 0.110, green: 0.105, blue: 0.125, alpha: 1.0).cgColor
        stdDayLabel.layer.cornerRadius = 8.0
        return stdDayLabel
    }()
    
    lazy var stdDayTitleLabel: UILabel = {
        let stdDayTitleLabel: UILabel = UILabel()
        stdDayTitleLabel.textAlignment = .center
        stdDayTitleLabel.textColor = .white
        stdDayTitleLabel.font = UIFont.monospacedSystemFont(ofSize: 18, weight: .semibold)
        stdDayTitleLabel.text = "통계 데이터 기준 일시"
        stdDayTitleLabel.layer.masksToBounds = true
        stdDayTitleLabel.numberOfLines = 0
//        stdDayLabel.layer.borderWidth = 1.0
//        stdDayLabel.layer.borderColor = UIColor.black.cgColor
//        stdDayLabel.layer.backgroundColor = UIColor.red.cgColor
//        stdDayLabel.layer.cornerRadius = 8.0
        return stdDayTitleLabel
    }()
    
    lazy var stdDayDataLabel: UILabel = {
        let stdDayDataLabel: UILabel = UILabel()
        stdDayDataLabel.textAlignment = .center
        stdDayDataLabel.textColor = .white
        stdDayDataLabel.font = UIFont.monospacedSystemFont(ofSize: 18, weight: .bold)
        stdDayDataLabel.layer.masksToBounds = true
        stdDayDataLabel.numberOfLines = 0
//        stdDayDataLabel.layer.borderWidth = 1.0
//        stdDayDataLabel.layer.borderColor = UIColor.black.cgColor
//        stdDayDataLabel.layer.backgroundColor = UIColor.red.cgColor
//        stdDayDataLabel.layer.cornerRadius = 8.0
        return stdDayDataLabel
    }()
    
    lazy var defCntLabel: UILabel = {
        let defCntLabel: UILabel = UILabel()
        defCntLabel.layer.masksToBounds = true
        defCntLabel.layer.borderWidth = 1.0
        defCntLabel.layer.borderColor = UIColor.systemGray.cgColor
        defCntLabel.layer.backgroundColor = UIColor.init(red: 0.110, green: 0.105, blue: 0.125, alpha: 1.0).cgColor
        defCntLabel.layer.cornerRadius = 8.0
        return defCntLabel
    }()
    
    lazy var defCntTitleLabel: UILabel = {
        let defCntTitleLabel: UILabel = UILabel()
        defCntTitleLabel.textAlignment = .left
        defCntTitleLabel.textColor = .white
        defCntTitleLabel.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .bold)
        defCntTitleLabel.text = "총 확진자"
        defCntTitleLabel.layer.masksToBounds = true
        defCntTitleLabel.numberOfLines = 0
//        defCntTitleLabel.layer.borderWidth = 1.0
//        defCntTitleLabel.layer.borderColor = UIColor.black.cgColor
//        defCntTitleLabel.layer.backgroundColor = UIColor.red.cgColor
//        defCntTitleLabel.layer.cornerRadius = 8.0
        return defCntTitleLabel
    }()
    
    lazy var defCntDataLabel: UILabel = {
        let defCntDataLabel: UILabel = UILabel()
        defCntDataLabel.textAlignment = .right
        defCntDataLabel.textColor = .white
        defCntDataLabel.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .bold)
        defCntDataLabel.layer.masksToBounds = true
        defCntDataLabel.numberOfLines = 0
//        defCntDataLabel.layer.borderWidth = 1.0
//        defCntDataLabel.layer.borderColor = UIColor.black.cgColor
//        defCntDataLabel.layer.backgroundColor = UIColor.red.cgColor
//        defCntDataLabel.layer.cornerRadius = 8.0
        return defCntDataLabel
    }()
    
    lazy var incDecLabel: UILabel = {
        let incDecLabel: UILabel = UILabel()
        incDecLabel.layer.masksToBounds = true
        incDecLabel.layer.borderWidth = 1.0
        incDecLabel.layer.borderColor = UIColor.systemGray.cgColor
        incDecLabel.layer.backgroundColor = UIColor.init(red: 0.110, green: 0.105, blue: 0.125, alpha: 1.0).cgColor
        incDecLabel.layer.cornerRadius = 8.0
        return incDecLabel
    }()
    
    lazy var incDecTitleLabel: UILabel = {
        let incDecTitleLabel: UILabel = UILabel()
        incDecTitleLabel.textAlignment = .left
        incDecTitleLabel.textColor = .white
        incDecTitleLabel.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .bold)
        incDecTitleLabel.text = "신규 확진자"
        incDecTitleLabel.layer.masksToBounds = true
        incDecTitleLabel.numberOfLines = 0
//        incDecTitleLabel.layer.borderWidth = 1.0
//        incDecTitleLabel.layer.borderColor = UIColor.black.cgColor
//        incDecTitleLabel.layer.backgroundColor = UIColor.red.cgColor
//        incDecTitleLabel.layer.cornerRadius = 8.0
        return incDecTitleLabel
    }()
    
    lazy var incDecDataLabel: UILabel = {
        let incDecDataLabel: UILabel = UILabel()
        incDecDataLabel.textAlignment = .right
        incDecDataLabel.textColor = .white
        incDecDataLabel.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .bold)
        incDecDataLabel.layer.masksToBounds = true
        incDecDataLabel.numberOfLines = 0
//        incDecDataLabel.layer.borderWidth = 1.0
//        incDecDataLabel.layer.borderColor = UIColor.black.cgColor
//        incDecDataLabel.layer.backgroundColor = UIColor.red.cgColor
//        incDecDataLabel.layer.cornerRadius = 8.0
        return incDecDataLabel
    }()
    
    lazy var isolIngCntLabel: UILabel = {
        let isolIngCntLabel: UILabel = UILabel()
        isolIngCntLabel.layer.masksToBounds = true
        isolIngCntLabel.layer.borderWidth = 1.0
        isolIngCntLabel.layer.borderColor = UIColor.systemGray.cgColor
        isolIngCntLabel.layer.backgroundColor = UIColor.init(red: 0.110, green: 0.105, blue: 0.125, alpha: 1.0).cgColor
        isolIngCntLabel.layer.cornerRadius = 8.0
        return isolIngCntLabel
    }()
    
    lazy var isolIngCntTitleLabel: UILabel = {
        let isolIngCntTitleLabel: UILabel = UILabel()
        isolIngCntTitleLabel.textAlignment = .left
        isolIngCntTitleLabel.textColor = .white
        isolIngCntTitleLabel.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .bold)
        isolIngCntTitleLabel.text = "격리 중 환자"
        isolIngCntTitleLabel.layer.masksToBounds = true
        isolIngCntTitleLabel.numberOfLines = 0
//        isolIngCntTitleLabel.layer.borderWidth = 1.0
//        isolIngCntTitleLabel.layer.borderColor = UIColor.black.cgColor
//        isolIngCntTitleLabel.layer.backgroundColor = UIColor.red.cgColor
//        isolIngCntTitleLabel.layer.cornerRadius = 8.0
        return isolIngCntTitleLabel
    }()
    
    lazy var isolIngCntDataLabel: UILabel = {
        let isolIngCntDataLabel: UILabel = UILabel()
        isolIngCntDataLabel.textAlignment = .right
        isolIngCntDataLabel.textColor = .white
        isolIngCntDataLabel.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .bold)
        isolIngCntDataLabel.layer.masksToBounds = true
        isolIngCntDataLabel.numberOfLines = 0
//        isolIngCntDataLabel.layer.borderWidth = 1.0
//        isolIngCntDataLabel.layer.borderColor = UIColor.black.cgColor
//        isolIngCntDataLabel.layer.backgroundColor = UIColor.red.cgColor
//        isolIngCntDataLabel.layer.cornerRadius = 8.0
        return isolIngCntDataLabel
    }()
    
    lazy var isolClearCntLabel: UILabel = {
        let isolClearCntLabel: UILabel = UILabel()
        isolClearCntLabel.layer.masksToBounds = true
        isolClearCntLabel.layer.borderWidth = 1.0
        isolClearCntLabel.layer.borderColor = UIColor.systemGray.cgColor
        isolClearCntLabel.layer.backgroundColor = UIColor.init(red: 0.110, green: 0.105, blue: 0.125, alpha: 1.0).cgColor
        isolClearCntLabel.layer.cornerRadius = 8.0
        return isolClearCntLabel
    }()
    
    lazy var isolClearCntTitleLabel: UILabel = {
        let isolClearCntTitleLabel: UILabel = UILabel()
        isolClearCntTitleLabel.textAlignment = .left
        isolClearCntTitleLabel.textColor = .white
        isolClearCntTitleLabel.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .bold)
        isolClearCntTitleLabel.text = "격리 해제 수"
        isolClearCntTitleLabel.layer.masksToBounds = true
        isolClearCntTitleLabel.numberOfLines = 0
//        isolClearCntTitleLabel.layer.borderWidth = 1.0
//        isolClearCntTitleLabel.layer.borderColor = UIColor.black.cgColor
//        isolClearCntTitleLabel.layer.backgroundColor = UIColor.red.cgColor
//        isolClearCntTitleLabel.layer.cornerRadius = 8.0
        return isolClearCntTitleLabel
    }()
    
    lazy var isolClearCntDataLabel: UILabel = {
        let isolClearCntDataLabel: UILabel = UILabel()
        isolClearCntDataLabel.textAlignment = .right
        isolClearCntDataLabel.textColor = .white
        isolClearCntDataLabel.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .bold)
        isolClearCntDataLabel.layer.masksToBounds = true
        isolClearCntDataLabel.numberOfLines = 0
//        isolClearCntDataLabel.layer.borderWidth = 1.0
//        isolClearCntDataLabel.layer.borderColor = UIColor.black.cgColor
//        isolClearCntDataLabel.layer.backgroundColor = UIColor.red.cgColor
//        isolClearCntDataLabel.layer.cornerRadius = 8.0
        return isolClearCntDataLabel
    }()
    
    
    lazy var deathCntLabel: UILabel = {
        let deathCntLabel: UILabel = UILabel()
        deathCntLabel.layer.masksToBounds = true
        deathCntLabel.layer.borderWidth = 1.0
        deathCntLabel.layer.borderColor = UIColor.systemGray.cgColor
        deathCntLabel.layer.backgroundColor = UIColor.init(red: 0.110, green: 0.105, blue: 0.125, alpha: 1.0).cgColor
        deathCntLabel.layer.cornerRadius = 8.0
        return deathCntLabel
    }()
    
    lazy var deathCntTitleLabel: UILabel = {
        let deathCntTitleLabel: UILabel = UILabel()
        deathCntTitleLabel.textAlignment = .left
        deathCntTitleLabel.textColor = .white
        deathCntTitleLabel.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .bold)
        deathCntTitleLabel.text = "누적 사망자 수"
        deathCntTitleLabel.layer.masksToBounds = true
        deathCntTitleLabel.numberOfLines = 0
//        deathCntTitleLabel.layer.borderWidth = 1.0
//        deathCntTitleLabel.layer.borderColor = UIColor.black.cgColor
//        deathCntTitleLabel.layer.backgroundColor = UIColor.red.cgColor
//        deathCntTitleLabel.layer.cornerRadius = 8.0
        return deathCntTitleLabel
    }()
    
    lazy var deathCntDataLabel: UILabel = {
        let deathCntDataLabel: UILabel = UILabel()
        deathCntDataLabel.textAlignment = .right
        deathCntDataLabel.textColor = .white
        deathCntDataLabel.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .bold)
        deathCntDataLabel.layer.masksToBounds = true
        deathCntDataLabel.numberOfLines = 0
//        deathCntDataLabel.layer.borderWidth = 1.0
//        deathCntDataLabel.layer.borderColor = UIColor.black.cgColor
//        deathCntDataLabel.layer.backgroundColor = UIColor.red.cgColor
//        deathCntDataLabel.layer.cornerRadius = 8.0
        return deathCntDataLabel
    }()
    
    lazy var localOccCntLabel: UILabel = {
        let localOccCntLabel: UILabel = UILabel()
        localOccCntLabel.textAlignment = .center
        localOccCntLabel.textColor = .white
        localOccCntLabel.layer.masksToBounds = true
        localOccCntLabel.numberOfLines = 0
        localOccCntLabel.layer.borderWidth = 1.0
        localOccCntLabel.layer.borderColor = UIColor.systemGray.cgColor
        localOccCntLabel.layer.backgroundColor = UIColor.init(red: 0.110, green: 0.105, blue: 0.125, alpha: 1.0).cgColor
        localOccCntLabel.layer.cornerRadius = 8.0
        return localOccCntLabel
    }()
    
    lazy var localOccCntTitleLabel: UILabel = {
        let localOccCntTitleLabel: UILabel = UILabel()
        localOccCntTitleLabel.textAlignment = .left
        localOccCntTitleLabel.textColor = .white
        localOccCntTitleLabel.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .bold)
        localOccCntTitleLabel.text = "지역 내 확진자 발생 수"
        localOccCntTitleLabel.layer.masksToBounds = true
        localOccCntTitleLabel.numberOfLines = 0
//        localOccCntTitleLabel.layer.borderWidth = 1.0
//        localOccCntTitleLabel.layer.borderColor = UIColor.black.cgColor
//        localOccCntTitleLabel.layer.backgroundColor = UIColor.red.cgColor
//        localOccCntTitleLabel.layer.cornerRadius = 8.0
        return localOccCntTitleLabel
    }()
    
    lazy var localOccCntDataLabel: UILabel = {
        let localOccCntDataLabel: UILabel = UILabel()
        localOccCntDataLabel.textAlignment = .right
        localOccCntDataLabel.textColor = .white
        localOccCntDataLabel.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .bold)
        localOccCntDataLabel.layer.masksToBounds = true
        localOccCntDataLabel.numberOfLines = 0
//        localOccCntDataLabel.layer.borderWidth = 1.0
//        localOccCntDataLabel.layer.borderColor = UIColor.black.cgColor
//        localOccCntDataLabel.layer.backgroundColor = UIColor.red.cgColor
//        localOccCntDataLabel.layer.cornerRadius = 8.0
        return localOccCntDataLabel
    }()
    
    lazy var overFlowCntLabel: UILabel = {
        let overFlowCntLabel: UILabel = UILabel()
        overFlowCntLabel.textAlignment = .center
        overFlowCntLabel.textColor = .white
        overFlowCntLabel.layer.masksToBounds = true
        overFlowCntLabel.layer.borderWidth = 1.0
        overFlowCntLabel.layer.borderColor = UIColor.systemGray.cgColor
        overFlowCntLabel.layer.backgroundColor = UIColor.init(red: 0.110, green: 0.105, blue: 0.125, alpha: 1.0).cgColor
        overFlowCntLabel.layer.cornerRadius = 8.0
        return overFlowCntLabel
    }()
    
    lazy var overFlowCntTitleLabel: UILabel = {
        let overFlowCntTitleLabel: UILabel = UILabel()
        overFlowCntTitleLabel.textAlignment = .left
        overFlowCntTitleLabel.textColor = .white
        overFlowCntTitleLabel.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .bold)
        overFlowCntTitleLabel.text = "해외유입 수"
        overFlowCntTitleLabel.layer.masksToBounds = true
        overFlowCntTitleLabel.numberOfLines = 0
//        overFlowCntTitleLabel.layer.borderWidth = 1.0
//        overFlowCntTitleLabel.layer.borderColor = UIColor.black.cgColor
//        overFlowCntTitleLabel.layer.backgroundColor = UIColor.red.cgColor
//        overFlowCntTitleLabel.layer.cornerRadius = 8.0
        return overFlowCntTitleLabel
    }()
    
    lazy var overFlowCntDataLabel: UILabel = {
        let overFlowCntDataLabel: UILabel = UILabel()
        overFlowCntDataLabel.textAlignment = .right
        overFlowCntDataLabel.textColor = .white
        overFlowCntDataLabel.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .bold)
        overFlowCntDataLabel.layer.masksToBounds = true
        overFlowCntDataLabel.numberOfLines = 0
//        overFlowCntDataLabel.layer.borderWidth = 1.0
//        overFlowCntDataLabel.layer.borderColor = UIColor.black.cgColor
//        overFlowCntDataLabel.layer.backgroundColor = UIColor.red.cgColor
//        overFlowCntDataLabel.layer.cornerRadius = 8.0
        return overFlowCntDataLabel
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        self.backgroundColor = .systemGreen
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
        setupStdDayTitleLabel()
        setupStdDayDataLabel()
        
        setupDefCntLabel()
        setupDefCntTitleLabel()
        setupDefCntDataLabel()
        
        setupIncDecLabel()
        setupIncDecTitleLabel()
        setupIncDecDataLabel()
        
        setupIsolIngCntLabel()
        setupIsolIngCntTitleLabel()
        setupIsolIngCntDataLabel()
        
        setupIsolClearCntLabel()
        setupIsolClearCntTitleLabel()
        setupIsolClearCntDataLabel()
        
        setupDeathCntLabel()
        setupDeathCntTitleLabel()
        setupDeathCntDataLabel()
        
        setupLocalOccCntLabel()
        setupLocalOccCntTitleLabel()
        setupLocalOccCntDataLabel()
        
        setupOverFlowCntLabel()
        setupOverFlowCntTitleLabel()
        setupOverFlowCntDataLabel()
    }
    
    private func setupGubunLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        gubunLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(gubunLabel)
        
        NSLayoutConstraint.activate([
            gubunLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 10),
            gubunLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            gubunLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            gubunLabel.heightAnchor.constraint(equalToConstant: 80),

        ])
    }
    
    private func setupCreateDtLabel() {
        createDtLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(createDtLabel)
        
        NSLayoutConstraint.activate([
            createDtLabel.topAnchor.constraint(equalTo: gubunLabel.bottomAnchor, constant: 10),
            createDtLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            createDtLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.5, constant: -25),
            createDtLabel.heightAnchor.constraint(equalTo: createDtLabel.widthAnchor, multiplier: 0.6),
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
    
    private func setupStdDayTitleLabel() {
        stdDayTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        stdDayLabel.addSubview(stdDayTitleLabel)
        
        NSLayoutConstraint.activate([
            stdDayTitleLabel.centerXAnchor.constraint(equalTo: stdDayLabel.centerXAnchor, constant: 0),
            stdDayTitleLabel.topAnchor.constraint(equalTo: stdDayLabel.topAnchor, constant: 10),
            stdDayTitleLabel.widthAnchor.constraint(equalTo: stdDayLabel.widthAnchor),
            stdDayTitleLabel.heightAnchor.constraint(equalTo: stdDayLabel.heightAnchor, multiplier: 0.3),
        ])
    }
    
    private func setupStdDayDataLabel() {
        stdDayDataLabel.translatesAutoresizingMaskIntoConstraints = false
        
        stdDayLabel.addSubview(stdDayDataLabel)
        
        NSLayoutConstraint.activate([
            stdDayDataLabel.centerXAnchor.constraint(equalTo: stdDayLabel.centerXAnchor, constant: 0),
            stdDayDataLabel.topAnchor.constraint(equalTo: stdDayTitleLabel.bottomAnchor, constant: 10),
            stdDayDataLabel.widthAnchor.constraint(equalTo: stdDayLabel.widthAnchor),
            stdDayDataLabel.bottomAnchor.constraint(equalTo: stdDayLabel.bottomAnchor, constant: -10),
        ])
    }
    
    private func setupDefCntLabel() {
        defCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(defCntLabel)
        
        NSLayoutConstraint.activate([
            defCntLabel.topAnchor.constraint(equalTo: createDtLabel.bottomAnchor, constant: 10),
            defCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            defCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            defCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupDefCntTitleLabel() {
        defCntTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        defCntLabel.addSubview(defCntTitleLabel)
        
        NSLayoutConstraint.activate([
            defCntTitleLabel.centerYAnchor.constraint(equalTo: defCntLabel.centerYAnchor),
            defCntTitleLabel.leadingAnchor.constraint(equalTo: defCntLabel.leadingAnchor, constant: 10),
            defCntTitleLabel.bottomAnchor.constraint(equalTo: defCntLabel.bottomAnchor, constant: -10),
            defCntTitleLabel.widthAnchor.constraint(equalTo: defCntLabel.widthAnchor, multiplier: 0.5, constant: -10),
        ])
    }
    
    private func setupDefCntDataLabel() {
        defCntDataLabel.translatesAutoresizingMaskIntoConstraints = false
        
        defCntLabel.addSubview(defCntDataLabel)
        
        NSLayoutConstraint.activate([
            defCntDataLabel.centerYAnchor.constraint(equalTo: defCntLabel.centerYAnchor),
            defCntDataLabel.trailingAnchor.constraint(equalTo: defCntLabel.trailingAnchor, constant: -10),
            defCntDataLabel.bottomAnchor.constraint(equalTo: defCntLabel.bottomAnchor, constant: -10),
            defCntDataLabel.widthAnchor.constraint(equalTo: defCntLabel.widthAnchor, multiplier: 0.5, constant: -10),
        ])
    }
    
    private func setupIncDecLabel() {
        incDecLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(incDecLabel)
        
        NSLayoutConstraint.activate([
            incDecLabel.topAnchor.constraint(equalTo: defCntLabel.bottomAnchor, constant: 10),
            incDecLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            incDecLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            incDecLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupIncDecTitleLabel() {
        incDecTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        incDecLabel.addSubview(incDecTitleLabel)
        
        NSLayoutConstraint.activate([
            incDecTitleLabel.centerYAnchor.constraint(equalTo: incDecLabel.centerYAnchor),
            incDecTitleLabel.leadingAnchor.constraint(equalTo: incDecLabel.leadingAnchor, constant: 10),
            incDecTitleLabel.bottomAnchor.constraint(equalTo: incDecLabel.bottomAnchor, constant: -10),
            incDecTitleLabel.widthAnchor.constraint(equalTo: incDecLabel.widthAnchor, multiplier: 0.5, constant: -10),
        ])
    }
    
    private func setupIncDecDataLabel() {
        incDecDataLabel.translatesAutoresizingMaskIntoConstraints = false
        
        incDecLabel.addSubview(incDecDataLabel)
        
        NSLayoutConstraint.activate([
            incDecDataLabel.centerYAnchor.constraint(equalTo: incDecLabel.centerYAnchor),
            incDecDataLabel.trailingAnchor.constraint(equalTo: incDecLabel.trailingAnchor, constant: -10),
            incDecDataLabel.bottomAnchor.constraint(equalTo: incDecLabel.bottomAnchor, constant: -10),
            incDecDataLabel.widthAnchor.constraint(equalTo: incDecLabel.widthAnchor, multiplier: 0.5, constant: -10),
        ])
    }
    
    private func setupIsolIngCntLabel() {
        
        isolIngCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(isolIngCntLabel)
        
        NSLayoutConstraint.activate([
            isolIngCntLabel.topAnchor.constraint(equalTo: incDecLabel.bottomAnchor, constant: 10),
            isolIngCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            isolIngCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            isolIngCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupIsolIngCntTitleLabel() {
        isolIngCntTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        isolIngCntLabel.addSubview(isolIngCntTitleLabel)
        
        NSLayoutConstraint.activate([
            isolIngCntTitleLabel.centerYAnchor.constraint(equalTo: isolIngCntLabel.centerYAnchor),
            isolIngCntTitleLabel.leadingAnchor.constraint(equalTo: isolIngCntLabel.leadingAnchor, constant: 10),
            isolIngCntTitleLabel.bottomAnchor.constraint(equalTo: isolIngCntLabel.bottomAnchor, constant: -10),
            isolIngCntTitleLabel.widthAnchor.constraint(equalTo: isolIngCntLabel.widthAnchor, multiplier: 0.5, constant: -10),
        ])
    }
    
    private func setupIsolIngCntDataLabel() {
        isolIngCntDataLabel.translatesAutoresizingMaskIntoConstraints = false
        
        isolIngCntLabel.addSubview(isolIngCntDataLabel)
        
        NSLayoutConstraint.activate([
            isolIngCntDataLabel.centerYAnchor.constraint(equalTo: isolIngCntLabel.centerYAnchor),
            isolIngCntDataLabel.trailingAnchor.constraint(equalTo: isolIngCntLabel.trailingAnchor, constant: -10),
            isolIngCntDataLabel.bottomAnchor.constraint(equalTo: isolIngCntLabel.bottomAnchor, constant: -10),
            isolIngCntDataLabel.widthAnchor.constraint(equalTo: isolIngCntLabel.widthAnchor, multiplier: 0.5, constant: -10),
        ])
    }
    
    private func setupIsolClearCntLabel() {
        isolClearCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(isolClearCntLabel)
        
        NSLayoutConstraint.activate([
            isolClearCntLabel.topAnchor.constraint(equalTo: isolIngCntLabel.bottomAnchor, constant: 10),
            isolClearCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            isolClearCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            isolClearCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupIsolClearCntTitleLabel() {
        isolClearCntTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        isolClearCntLabel.addSubview(isolClearCntTitleLabel)
        
        NSLayoutConstraint.activate([
            isolClearCntTitleLabel.centerYAnchor.constraint(equalTo: isolClearCntLabel.centerYAnchor),
            isolClearCntTitleLabel.leadingAnchor.constraint(equalTo: isolClearCntLabel.leadingAnchor, constant: 10),
            isolClearCntTitleLabel.bottomAnchor.constraint(equalTo: isolClearCntLabel.bottomAnchor, constant: -10),
            isolClearCntTitleLabel.widthAnchor.constraint(equalTo: isolClearCntLabel.widthAnchor, multiplier: 0.5, constant: -10),
        ])
    }
    
    private func setupIsolClearCntDataLabel() {
        isolClearCntDataLabel.translatesAutoresizingMaskIntoConstraints = false
        
        isolClearCntLabel.addSubview(isolClearCntDataLabel)
        
        NSLayoutConstraint.activate([
            isolClearCntDataLabel.centerYAnchor.constraint(equalTo: isolClearCntLabel.centerYAnchor),
            isolClearCntDataLabel.trailingAnchor.constraint(equalTo: isolClearCntLabel.trailingAnchor, constant: -10),
            isolClearCntDataLabel.bottomAnchor.constraint(equalTo: isolClearCntLabel.bottomAnchor, constant: -10),
            isolClearCntDataLabel.widthAnchor.constraint(equalTo: isolClearCntLabel.widthAnchor, multiplier: 0.5, constant: -10),
        ])
    }
    
    private func setupDeathCntLabel() {
        deathCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(deathCntLabel)
        
        NSLayoutConstraint.activate([
            deathCntLabel.topAnchor.constraint(equalTo: isolClearCntLabel.bottomAnchor, constant: 10),
            deathCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            deathCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            deathCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupDeathCntTitleLabel() {
        deathCntTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        deathCntLabel.addSubview(deathCntTitleLabel)
        
        NSLayoutConstraint.activate([
            deathCntTitleLabel.centerYAnchor.constraint(equalTo: deathCntLabel.centerYAnchor),
            deathCntTitleLabel.leadingAnchor.constraint(equalTo: deathCntLabel.leadingAnchor, constant: 10),
            deathCntTitleLabel.bottomAnchor.constraint(equalTo: deathCntLabel.bottomAnchor, constant: -10),
            deathCntTitleLabel.widthAnchor.constraint(equalTo: deathCntLabel.widthAnchor, multiplier: 0.5, constant: -10),
        ])
    }
    
    private func setupDeathCntDataLabel() {
        deathCntDataLabel.translatesAutoresizingMaskIntoConstraints = false
        
        deathCntLabel.addSubview(deathCntDataLabel)
        
        NSLayoutConstraint.activate([
            deathCntDataLabel.centerYAnchor.constraint(equalTo: deathCntLabel.centerYAnchor),
            deathCntDataLabel.trailingAnchor.constraint(equalTo: deathCntLabel.trailingAnchor, constant: -10),
            deathCntDataLabel.bottomAnchor.constraint(equalTo: deathCntLabel.bottomAnchor, constant: -10),
            deathCntDataLabel.widthAnchor.constraint(equalTo: deathCntLabel.widthAnchor, multiplier: 0.5, constant: -10),
        ])
    }
    
    private func setupLocalOccCntLabel() {
        localOccCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(localOccCntLabel)
        
        NSLayoutConstraint.activate([
            localOccCntLabel.topAnchor.constraint(equalTo: deathCntLabel.bottomAnchor, constant: 10),
            localOccCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            localOccCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            localOccCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupLocalOccCntTitleLabel() {
        localOccCntTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        localOccCntLabel.addSubview(localOccCntTitleLabel)
        
        NSLayoutConstraint.activate([
            localOccCntTitleLabel.centerYAnchor.constraint(equalTo: localOccCntLabel.centerYAnchor),
            localOccCntTitleLabel.leadingAnchor.constraint(equalTo: localOccCntLabel.leadingAnchor, constant: 10),
            localOccCntTitleLabel.bottomAnchor.constraint(equalTo: localOccCntLabel.bottomAnchor, constant: -10),
            localOccCntTitleLabel.widthAnchor.constraint(equalTo: localOccCntLabel.widthAnchor, multiplier: 0.6, constant: -10),
        ])
    }
    
    private func setupLocalOccCntDataLabel() {
        localOccCntDataLabel.translatesAutoresizingMaskIntoConstraints = false
        
        localOccCntLabel.addSubview(localOccCntDataLabel)
        
        NSLayoutConstraint.activate([
            localOccCntDataLabel.centerYAnchor.constraint(equalTo: localOccCntLabel.centerYAnchor),
            localOccCntDataLabel.trailingAnchor.constraint(equalTo: localOccCntLabel.trailingAnchor, constant: -10),
            localOccCntDataLabel.bottomAnchor.constraint(equalTo: localOccCntLabel.bottomAnchor, constant: -10),
            localOccCntDataLabel.widthAnchor.constraint(equalTo: localOccCntLabel.widthAnchor, multiplier: 0.4, constant: -10),
        ])
    }
    
    private func setupOverFlowCntLabel() {
        overFlowCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(overFlowCntLabel)
        
        NSLayoutConstraint.activate([
            overFlowCntLabel.topAnchor.constraint(equalTo: localOccCntLabel.bottomAnchor, constant: 10),
            overFlowCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            overFlowCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            overFlowCntLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    private func setupOverFlowCntTitleLabel() {
        overFlowCntTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        overFlowCntLabel.addSubview(overFlowCntTitleLabel)
        
        NSLayoutConstraint.activate([
            overFlowCntTitleLabel.centerYAnchor.constraint(equalTo: overFlowCntLabel.centerYAnchor),
            overFlowCntTitleLabel.leadingAnchor.constraint(equalTo: overFlowCntLabel.leadingAnchor, constant: 10),
            overFlowCntTitleLabel.bottomAnchor.constraint(equalTo: overFlowCntLabel.bottomAnchor, constant: -10),
            overFlowCntTitleLabel.widthAnchor.constraint(equalTo: overFlowCntLabel.widthAnchor, multiplier: 0.5, constant: -10),
        ])
    }
    
    private func setupOverFlowCntDataLabel() {
        overFlowCntDataLabel.translatesAutoresizingMaskIntoConstraints = false
        
        overFlowCntLabel.addSubview(overFlowCntDataLabel)
        
        NSLayoutConstraint.activate([
            overFlowCntDataLabel.centerYAnchor.constraint(equalTo: overFlowCntLabel.centerYAnchor),
            overFlowCntDataLabel.trailingAnchor.constraint(equalTo: overFlowCntLabel.trailingAnchor, constant: -10),
            overFlowCntDataLabel.bottomAnchor.constraint(equalTo: overFlowCntLabel.bottomAnchor, constant: -10),
            overFlowCntDataLabel.widthAnchor.constraint(equalTo: overFlowCntLabel.widthAnchor, multiplier: 0.5, constant: -10),
        ])
    }
}
