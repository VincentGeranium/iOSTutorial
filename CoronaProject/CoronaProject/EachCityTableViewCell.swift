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
        deathCntLabel.layer.backgroundColor = UIColor.blue.cgColor
        deathCntLabel.layer.cornerRadius = 8.0
        return deathCntLabel
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
        setupIncDecLabel()
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
    
    private func setupIncDecLabel() {
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


}
