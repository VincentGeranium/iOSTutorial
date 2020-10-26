//
//  ViewController.swift
//  CoronaProject
//
//  Created by 김광준 on 2020/10/23.
//

import UIKit

class MainViewController: UIViewController {
    
    private let listTableView: UITableView = {
        let listTableView: UITableView = UITableView()
        listTableView.register(ListTableViewCell.self, forCellReuseIdentifier: ListTableViewCell.cellIdentifier)
        listTableView.rowHeight = CGFloat(70)
        return listTableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        
        addDelegates()
        addViews()
        
        
    }
    
    private func addDelegates() {
        listTableView.delegate = self
        listTableView.dataSource = self
    }
    
    private func addViews() {
        setupListTableView()
    }
    
    private func setupListTableView() {
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

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ListTableViewCell.cellIdentifier) else {
            return UITableViewCell()
        }
        
        return cell
    }
    
    
}

