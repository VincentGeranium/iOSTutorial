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
        var titleLabel: UILabel = UILabel()
        titleLabel.font = UIFont.boldSystemFont(ofSize: 14.0)
        titleLabel.backgroundColor = UIColor.systemBlue
        return titleLabel
    }()
    
    lazy var contentsLabel: UILabel = {
        var contentsLabel: UILabel = UILabel()
        contentsLabel.font = UIFont.systemFont(ofSize: 12.0)
        contentsLabel.numberOfLines = 2
        contentsLabel.lineBreakMode = NSLineBreakMode.byTruncatingTail
        contentsLabel.backgroundColor = UIColor.systemRed
        return contentsLabel
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
        setUpTitleLabel()
        setUpContentsLabel()
    }
    
    private func setUpTitleLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 5),
            titleLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 5),
            titleLabel.heightAnchor.constraint(equalToConstant: 35),
            titleLabel.widthAnchor.constraint(equalToConstant: (contentView.frame.width) * 2/3),
        ])
    }
    
    private func setUpContentsLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        contentsLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(contentsLabel)
        
        NSLayoutConstraint.activate([
            contentsLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            contentsLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 5),
            contentsLabel.heightAnchor.constraint(equalTo: titleLabel.heightAnchor),
            contentsLabel.widthAnchor.constraint(equalTo: titleLabel.widthAnchor),
            
        ])
    }
    
}
