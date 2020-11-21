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
//        eachCityTableView.tableFooterView = UIView()
        eachCityTableView.separatorStyle = .none
        return eachCityTableView
    }()
    
    var gubuntData = ""
    
    var localOccCntData = ""
    
    var deathCntData = ""
    
    var incDecData = ""
    
    var isolClearCntData = ""
    
    var defCntData = ""
    
    var isolIngCntData = ""
    
    var overFlowCntData = ""
    
    var createDtData = ""
    
    var stdDayData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.tintColor = .white
        
        self.eachCityTableView.backgroundColor = .black
        self.eachCityTableView.estimatedRowHeight = UITableView.automaticDimension
        self.eachCityTableView.rowHeight = 850
        
        
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
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 755
//    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: EachCityTableViewCell.cellIdentifier, for: indexPath) as? EachCityTableViewCell else {
            return UITableViewCell()
        }
        
        if gubuntData == "합계" {
            cell.gubunLabel.text = gubuntData
        } else {
            cell.gubunLabel.text = "\(gubuntData)의 코로나 현황"
        }
        
        cell.createDtDataLabel.text = createDtData
        cell.stdDayDataLabel.text = stdDayData
        cell.defCntDataLabel.text = defCntData
        cell.incDecDataLabel.text = incDecData
        cell.isolIngCntDataLabel.text = isolIngCntData
        cell.isolClearCntDataLabel.text = isolClearCntData
        cell.deathCntDataLabel.text = deathCntData
        cell.localOccCntDataLabel.text = localOccCntData
        cell.overFlowCntDataLabel.text = overFlowCntData
        
        return cell
    }
    
    
}
