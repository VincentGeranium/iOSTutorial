//
//  ViewController.swift
//  iOSTutorialMemo
//
//  Created by 김광준 on 2020/08/09.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let listTableView: UITableView = {
        var listTableView: UITableView = UITableView()
        listTableView.register(ListTableViewCell.self, forCellReuseIdentifier: ListTableViewCell.reuseIdentifier)
        return listTableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        navigationController?.delegate = self
        self.listTableView.rowHeight = 80
        self.title = "목록"
        
        listTableView.delegate = self
        listTableView.dataSource = self
        
        setUpAndAddViews()
    }
    
    private func setUpAndAddViews() {
        setUpListTableView()
    }
    
    private func setUpListTableView() {
        let guide = self.view.safeAreaLayoutGuide
        
        listTableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(listTableView)
        
        NSLayoutConstraint.activate([
            listTableView.topAnchor.constraint(equalTo: guide.topAnchor),
            listTableView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            listTableView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            listTableView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }


}


extension ViewController:  UITableViewDelegate, UITableViewDataSource, UINavigationControllerDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ListTableViewCell.reuseIdentifier, for: indexPath) as? ListTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    
}
