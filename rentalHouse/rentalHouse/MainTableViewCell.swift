//
//  MainTableViewCell.swift
//  rentalHouse
//
//  Created by 김광준 on 2020/10/30.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    static let cellReuseIdentifier: String = "MainTableViewCell"
    
    lazy var blockNameLabel: UILabel = {
        let blockNameLabel: UILabel = UILabel()
        blockNameLabel.backgroundColor = .red
        blockNameLabel.textAlignment = .center
        blockNameLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        blockNameLabel.text = ""
        return blockNameLabel
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
        setupBlockNameLabel()
    }
    
    private func setupBlockNameLabel() {
        let guide = self.safeAreaLayoutGuide
        
        contentView.addSubview(blockNameLabel)
        
        blockNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            blockNameLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 10),
            blockNameLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 10),
            blockNameLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -10),
            blockNameLabel.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -10),
        ])
    }

}
