//
//  ListTableViewCell.swift
//  iOSTutorialMemo
//
//  Created by 김광준 on 2020/08/11.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    static let reuseIdentifier: String = "ListTableViewCell"
    
    let titleLabel: UILabel = {
        var titleLabel: UILabel = UILabel()
        titleLabel.font = UIFont.boldSystemFont(ofSize: 14.0)
        titleLabel.backgroundColor = UIColor.systemBlue
        return titleLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpTitleLabel()
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
    
    private func setUpTitleLabel() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
    
        self.contentView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 5),
            titleLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 5),
            titleLabel.heightAnchor.constraint(equalToConstant: 40),
            titleLabel.widthAnchor.constraint(equalToConstant: (contentView.frame.width) * 2/3),
        ])
    }

}
