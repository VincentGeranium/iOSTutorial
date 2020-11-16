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

        // Configure the view for the selected state
    }
    
    
    private func addViews() {
        setupGubunLabel()
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
            gubunLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            gubunLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            gubunLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            gubunLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.7),
        ])
    }
    
    private func setupDeathCntLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        deathCntLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(deathCntLabel)
        
        NSLayoutConstraint.activate([
            deathCntLabel.topAnchor.constraint(equalTo: gubunLabel.bottomAnchor, constant: 10),
            deathCntLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            deathCntLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            deathCntLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.7),
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
            incDecLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.7),
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
            isolClearCntLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.7),
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
            defCntLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.7),
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
            isolIngCntLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.7),
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
            overFlowCntLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.7),
        ])
    }


}
