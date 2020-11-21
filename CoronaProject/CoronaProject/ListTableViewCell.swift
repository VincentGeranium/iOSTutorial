//
//  ListTableViewCell.swift
//  CoronaProject
//
//  Created by 김광준 on 2020/10/27.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    static let cellIdentifier: String = "ListTableViewCell"
    
    lazy var gubunLabel: UILabel = {
        let gubunLabel: UILabel = UILabel()
        gubunLabel.textAlignment = .center
        gubunLabel.textColor = .white
        gubunLabel.font = UIFont.monospacedSystemFont(ofSize: 25, weight: .semibold)
        gubunLabel.layer.masksToBounds = false
//        gubunLabel.layer.shadowRadius = 3.0
//        gubunLabel.layer.shadowOpacity = 0.5
//        gubunLabel.layer.shadowOffset = CGSize(width: 4, height: 4)
        gubunLabel.layer.borderWidth = 1.0
        gubunLabel.layer.borderColor = UIColor.systemGray.cgColor
        gubunLabel.layer.backgroundColor = UIColor.init(red: 0.110, green: 0.105, blue: 0.125, alpha: 1.0).cgColor
        gubunLabel.layer.cornerRadius = 8.0
        return gubunLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = .black
        
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

        if selected == false {
            self.selectionStyle = .gray

        } else {
            self.selectionStyle = .none

        }
    }
    
    private func addViews() {
        setupGubunLabel()
    }
    
    private func setupGubunLabel() {
        let guide = self.safeAreaLayoutGuide
        
        gubunLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(gubunLabel)
        
        NSLayoutConstraint.activate([
            gubunLabel.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            gubunLabel.centerYAnchor.constraint(equalTo: guide.centerYAnchor),
            gubunLabel.widthAnchor.constraint(equalTo: guide.widthAnchor, multiplier: 0.9),
            gubunLabel.heightAnchor.constraint(equalTo: guide.heightAnchor, multiplier: 0.9)
        ])
        
    }

    

}
