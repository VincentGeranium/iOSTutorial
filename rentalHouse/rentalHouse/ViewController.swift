//
//  ViewController.swift
//  rentalHouse
//
//  Created by 김광준 on 2020/10/30.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    lazy var movieData :[MovieDataStruct] = {
        let movieData = [MovieDataStruct]()
        return movieData
    }()
    
    lazy var mainTableView: UITableView = {
        let mainTableView: UITableView = UITableView()
        mainTableView.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.cellReuseIdentifier)
        return mainTableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGreen
        
        addDelegates()
        addViews()
        getData()
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
    
    func getData() {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        let currentDateString = formatter.string(from: Date())
        guard let currentDateInt = Int(currentDateString) else { return }
        let currentDateIntMinusOne = currentDateInt - 1
        print(currentDateIntMinusOne)
        
        let header: HTTPHeaders = [
            "Content-Type" : "application/json"
        ]
        
        let alamo = AF.request("http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=7b06ff3186f98faeddbf65439279514f&targetDt=\(currentDateIntMinusOne)&itemPerPage=10&multiMovieYn=Y&repNationCd=K", method: HTTPMethod.get, parameters: nil, encoding: JSONEncoding.default, headers: header)
        
        alamo.responseJSON { (response) in
            switch response.result {
            case .success(let success):
//                print(success)
                do {
                    guard let jsonObject = response.value else { return }
                    guard let jsonObjectDictionary = jsonObject as? NSDictionary else { return }
                    guard let boxOfficeResult = jsonObjectDictionary["boxOfficeResult"] as? NSDictionary else { return }
                    guard let dailyBoxOfficeList = boxOfficeResult["dailyBoxOfficeList"] as? NSArray else { return }

                    for row in dailyBoxOfficeList {
                        guard let r = row as? NSDictionary else { return }
                            
                            var movieDataStruct = MovieDataStruct()
                            
                            movieDataStruct.audiAcc = r["audiAcc"] as? String
                            movieDataStruct.movieNm = r["movieNm"] as? String
                            movieDataStruct.openDt = r["openDt"] as? String
                            
                        self.movieData.append(movieDataStruct)
                            
//                        print(self.movieData)
                    }
                } catch {
                    print(error.localizedDescription)
                }
            case .failure(let failure):
                print(failure.localizedDescription)
                break
            }
        }
        print(movieData)
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

