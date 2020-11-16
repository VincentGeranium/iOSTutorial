//
//  LazarettoViewController.swift
//  CoronaProject
//
//  Created by 김광준 on 2020/11/14.
//

import UIKit

class CommonViewController: UIViewController {
    
    private let eachCityTableView: UITableView = {
        var eachCityTableView: UITableView = UITableView()
        eachCityTableView.register(EachCityTableViewCell.self, forCellReuseIdentifier: EachCityTableViewCell.cellIdentifier)

        return eachCityTableView
    }()
    
    var gubuntData = ""
    
    var deathCntData = ""
    
    var incDecData = ""
    
    var isolClearCntData = ""
    
    var defCntData = ""
    
    var isolIngCntData = ""
    
    var overFlowCntData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBlue
        
        addDelegates()
        addViews()
    }
    
    private func addDelegates() {
        eachCityTableView.delegate = self
        eachCityTableView.dataSource = self
        
    }
    
    private func addViews() {
        setupEachCityTableView()
    }
    
    private func setupEachCityTableView() {
        let guide = self.view.safeAreaLayoutGuide
        
        eachCityTableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(eachCityTableView)
        
        NSLayoutConstraint.activate([
            eachCityTableView.topAnchor.constraint(equalTo: guide.topAnchor),
            eachCityTableView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            eachCityTableView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            eachCityTableView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }
    
}

extension CommonViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: EachCityTableViewCell.cellIdentifier, for: indexPath) as? EachCityTableViewCell else {
            return UITableViewCell()
        }
        
        cell.gubunLabel.text = gubuntData
        cell.deathCntLabel.text = deathCntData
        cell.incDecLabel.text = incDecData
        cell.isolClearCntLabel.text = isolClearCntData
        cell.defCntLabel.text = defCntData
        cell.isolIngCntLabel.text = isolIngCntData
        cell.overFlowCntLabel.text = overFlowCntData
        
        return cell
    }
    
    
}
