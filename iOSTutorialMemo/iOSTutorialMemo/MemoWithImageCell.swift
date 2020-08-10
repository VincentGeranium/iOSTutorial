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
    
    let titleImageView: UIImageView = {
        var titleImageView: UIImageView = UIImageView()
        titleImageView.backgroundColor = .black
        return titleImageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpTitleImageView()
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
    
    private func setUpTitleImageView() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        titleImageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.addSubview(titleImageView)
        
        NSLayoutConstraint.activate([
            titleImageView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 5),
            titleImageView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 10),
            titleImageView.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -5),
            titleImageView.widthAnchor.constraint(equalToConstant: contentView.frame.width / 5),
        ])
    }

}
