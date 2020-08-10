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
        listTableView.register(MemoCell.self, forCellReuseIdentifier: MemoCell.reuseIdentifier)
        listTableView.register(MemoWithImageCell.self, forCellReuseIdentifier: MemoWithImageCell.reuseIdentifier)
        return listTableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        navigationController?.delegate = self
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
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MemoCell.reuseIdentifier, for: indexPath) as? MemoCell else {
                return UITableViewCell()
            }
            return cell
        } else if indexPath.row == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MemoWithImageCell.reuseIdentifier, for: indexPath) as? MemoWithImageCell else {
                return UITableViewCell()
            }
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

}
