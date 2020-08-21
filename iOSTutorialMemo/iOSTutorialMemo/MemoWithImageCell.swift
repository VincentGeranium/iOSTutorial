//
//  MemoWithImageCell.swift
//  iOSTutorialMemo
//
//  Created by 김광준 on 2020/08/11.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class MemoWithImageCell: UITableViewCell {
    
    static let reuseIdentifier: String = "MemoWithImageCell"
    
    lazy var titleImageView: UIImageView = {
        let titleImageView: UIImageView = UIImageView()
        titleImageView.image = UIImage.init(named: "keg")
//        titleImageView.backgroundColor = .black
        return titleImageView
    }()
    
    lazy var titleLabel: UILabel = {
        let titleLabel: UILabel = UILabel()
        titleLabel.font = UIFont.boldSystemFont(ofSize: 14.0)
        titleLabel.backgroundColor = UIColor.systemBlue
        return titleLabel
    }()
    
    lazy var contentsLabel: UILabel = {
        let contentsLabel: UILabel = UILabel()
        contentsLabel.font = UIFont.systemFont(ofSize: 12.0)
        contentsLabel.lineBreakMode = NSLineBreakMode.byTruncatingTail
        contentsLabel.numberOfLines = 2
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
    
    // All SetUp Functions
    private func setUpAndAddSubviews() {
        setUpTitleImageView()
//        setUpTitleLabel()
//        setUpContentsLabel()
//        setUpDateAndTimeLabel()
    }
    
    private func setUpTitleImageView() {
        let guide = self.contentView.safeAreaLayoutGuide
        titleImageView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(titleImageView)
        
        NSLayoutConstraint.activate([
            titleImageView.topAnchor.constraint(equalTo: guide.topAnchor),
            titleImageView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            titleImageView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
            // aspect ratio code
            titleImageView.heightAnchor.constraint(equalTo: self.titleImageView.widthAnchor, multiplier: 1.0/2.0)
        ])
    }
    
    private func setUpTitleLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 5),
            titleLabel.leadingAnchor.constraint(equalTo: titleImageView.trailingAnchor, constant: 5),
            titleLabel.widthAnchor.constraint(equalToConstant: (contentView.frame.width) * 0.5),
            titleLabel.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private func setUpContentsLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        contentsLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(contentsLabel)
        
        NSLayoutConstraint.activate([
            contentsLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            contentsLabel.leadingAnchor.constraint(equalTo: titleImageView.trailingAnchor, constant: 5),
            contentsLabel.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -5),
            contentsLabel.widthAnchor.constraint(equalTo: titleLabel.widthAnchor),
//            contentsLabel.heightAnchor.constraint(equalTo: titleLabel.heightAnchor),
        ])
    }
    
    private func setUpDateAndTimeLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        dateAndTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(dateAndTimeLabel)
        
        NSLayoutConstraint.activate([
            dateAndTimeLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 5),
            dateAndTimeLabel.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 5),
            dateAndTimeLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -5),
            dateAndTimeLabel.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -5),
        ])
    }
}
