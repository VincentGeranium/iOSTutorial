//
//  ListTableViewCell.swift
//  iOSTutorialMemo
//
//  Created by 김광준 on 2020/08/11.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class MemoCell: UITableViewCell {
    
    static let reuseIdentifier: String = "ListTableViewCell"
    
    lazy var titleLabel: UILabel = {
        let titleLabel: UILabel = UILabel()
        titleLabel.font = UIFont.boldSystemFont(ofSize: 14.0)
        titleLabel.backgroundColor = UIColor.systemBlue
        return titleLabel
    }()
    
    lazy var contentsLabel: UILabel = {
        let contentsLabel: UILabel = UILabel()
        contentsLabel.font = UIFont.systemFont(ofSize: 12.0)
        contentsLabel.numberOfLines = 2
        contentsLabel.lineBreakMode = NSLineBreakMode.byTruncatingTail
        contentsLabel.backgroundColor = UIColor.systemRed
        return contentsLabel
    }()
    
    lazy var dateAndTimeLabel: UILabel = {
        let dateAndTimeLabel: UILabel = UILabel()
        dateAndTimeLabel.font = UIFont.systemFont(ofSize: 11.0)
        dateAndTimeLabel.textAlignment = .right
        dateAndTimeLabel.numberOfLines = 2
        dateAndTimeLabel.lineBreakMode = .byWordWrapping
        dateAndTimeLabel.backgroundColor = .systemGray
        return dateAndTimeLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        setUpAndAddSubviews()
        
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
    
    private func setUpAndAddSubviews() {
        setUpDateAndTimeLabel()
        
        setUpTitleLabel()
        setUpContentsLabel()
    
        
        
    }
    
    private func setUpTitleLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: guide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: dateAndTimeLabel.leadingAnchor, constant: -10),
            titleLabel.heightAnchor.constraint(equalToConstant: 21),
        ])
    }
    
    private func setUpContentsLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        contentsLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(contentsLabel)
        
        NSLayoutConstraint.activate([
            contentsLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            contentsLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 10),
            contentsLabel.trailingAnchor.constraint(equalTo: dateAndTimeLabel.leadingAnchor, constant: -10),
            contentsLabel.heightAnchor.constraint(equalToConstant: 30),
        ])
    }
    
    private func setUpDateAndTimeLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        dateAndTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(dateAndTimeLabel)
        
        NSLayoutConstraint.activate([
            dateAndTimeLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 10),
            dateAndTimeLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            dateAndTimeLabel.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -10),
            dateAndTimeLabel.widthAnchor.constraint(equalToConstant: 65),
        ])
    }
    
}
