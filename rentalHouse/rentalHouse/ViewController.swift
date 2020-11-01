//
//  ViewController.swift
//  rentalHouse
//
//  Created by 김광준 on 2020/10/30.
//

import UIKit

class ViewController: UIViewController {
    var movieData: [MovieDataStruct] = []
    
    lazy var mainTableView: UITableView = {
        let mainTableView: UITableView = UITableView()
        mainTableView.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.cellReuseIdentifier)
        return mainTableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGreen
        movieData = getData()
        addDelegates()
        addViews()
    }
    
    private func addDelegates() {
        mainTableView.delegate = self
        mainTableView.dataSource = self
    }
    
    private func addViews() {
        setupMainTableView()
    }
    
    private func setupMainTableView() {
        let guide = self.view.safeAreaLayoutGuide
        
        mainTableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(mainTableView)
        
        NSLayoutConstraint.activate([
            mainTableView.topAnchor.constraint(equalTo: guide.topAnchor),
            mainTableView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            mainTableView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            mainTableView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = mainTableView.dequeueReusableCell(withIdentifier: MainTableViewCell.cellReuseIdentifier, for: indexPath) as? MainTableViewCell else {
            return UITableViewCell()
        }
        let data = self.movieData[indexPath.row]
        cell.blockNameLabel.text = data.audiAcc
        
        return cell
    }
    
    
}

