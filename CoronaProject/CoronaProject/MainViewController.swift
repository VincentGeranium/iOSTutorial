//
//  ViewController.swift
//  CoronaProject
//
//  Created by 김광준 on 2020/10/23.
//

import UIKit
import Alamofire

class MainViewController: UIViewController {

    var tempCoronaNowData: CoronaNowData?
    
    var coronaNowDataList: [CoronaNowData] = []
    
    var gubunArray: [String] = []
    
    var isGetGubun = false
    
    var isGetItems = false
    
    var paramDate = ""
    
    private let listTableView: UITableView = {
        let listTableView: UITableView = UITableView()
        listTableView.register(ListTableViewCell.self, forCellReuseIdentifier: ListTableViewCell.cellIdentifier)
        
        return listTableView
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
//        getAllCoronaNowData()
        self.title = "전국 시도명"
        addDelegates()
        addViews()
        setupDate()
        setupXMLParsing()
        
        
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
    
    private func setupDate() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        
        let currentDate = dateFormatter.string(from: Date())
        print("⚪️ currentDate : \(currentDate)")
        
        let time = DateFormatter()
        time.dateFormat = "HHmmsssss"
        
        let currentTime = time.string(from: Date())
        print("⚪️⚪️ currentTime : \(currentTime)")
        
        guard let intCurrentTime = Int(currentTime) else { return }
        print("⚪️⚪️⚪️ intCurrentTime : \(intCurrentTime)")
        
        // 시간 계산 로직
        if 095900000 <= intCurrentTime && intCurrentTime <= 235959000 {
            
            paramDate = currentDate
            
        } else {
            guard let intCurrentDate = Int(currentDate) else { return }
            
            let intYesterday = intCurrentDate - 1
            
            let stringYesterday = String(intYesterday)
            print("⚪️⚪️⚪️⚪️ stringYesterday : \(stringYesterday)")
            
            paramDate = stringYesterday
            
            print("⚪️⚪️⚪️⚪️⚪️ 오늘 날짜 - 1")
        }
    }
    
    private func setupXMLParsing() {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyyMMdd"
//
//        let currentDate = dateFormatter.string(from: Date())
//        print(currentDate)
//
//        var paramDate = ""
//
//        let time = DateFormatter()
//        time.dateFormat = "HHmmsssss"
//
//        let currentTime = time.string(from: Date())
//        print(currentTime)
//
//        guard let intCurrentTime = Int(currentTime) else { return }
//        print(intCurrentTime)
//
//        // 시간 계산 로직
//        if 095900000 <= intCurrentTime && intCurrentTime <= 235959000 {
//
//            paramDate = currentDate
//
//        } else {
//            guard let intCurrentDate = Int(currentDate) else { return }
//
//            let intYesterday = intCurrentDate - 1
//
//            let stringYesterday = String(intYesterday)
//
//            paramDate = stringYesterday
//
//            print("오늘 날짜 - 1")
//        }
        
        let coronaDataURLTest = "http://api.androidhive.info/pizza/?format=xml"
        
        let coronaDataURL = "http://openapi.data.go.kr/openapi/service/rest/Covid19/getCovid19SidoInfStateJson?serviceKey=Dmng3ElRum8OIdUuU1Z0NuvDIsfOSvxTO03Tk5gCfwBxbs9UodOlvevA%2FA7%2FgRimX1m1vE1eXoq7BtC4dwaM9A%3D%3D&pageNo=1&numOfRows=10&startCreateDt=\(paramDate)&endCreateDt=\(paramDate)"
        
        guard let url = URLComponents(string: coronaDataURL)?.url else { return }
        
        guard let xmlParser = XMLParser(contentsOf: url) else { return }
        
        xmlParser.delegate = self
        
        xmlParser.parse()
        
    }


}

extension MainViewController: UITableViewDelegate, UITableViewDataSource, XMLParserDelegate {
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        if (elementName == "createDt" || elementName == "deathCnt" || elementName == "defCnt" || elementName == "gubun" || elementName == "incDec" || elementName == "isolClearCnt" || elementName == "isolIngCnt" || elementName == "overFlowCnt" || elementName == "stdDay") {
            
            if elementName == "gubun" {
                isGetGubun = true
            }
            isGetItems = true
        }
        
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        if (elementName == "createDt" || elementName == "deathCnt" || elementName == "defCnt" || elementName == "gubun" || elementName == "incDec" || elementName == "isolClearCnt" || elementName == "isolIngCnt" || elementName == "overFlowCnt" || elementName == "stdDay") {
            
            if elementName == "gubun" {
                isGetGubun = false
            }
            isGetItems = false
        }
        
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if isGetItems == true {
//            print("Sucess Get Item")
        }
        
        if isGetGubun == true {
            print(string)
            gubunArray.append(string)
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gubunArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ListTableViewCell.cellIdentifier, for: indexPath) as? ListTableViewCell else {
            return UITableViewCell()
        }
        
        let gubunTitle = self.gubunArray[indexPath.row]
        cell.gubunLabel.text = gubunTitle
        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////        guard let cell = tableView.dequeueReusableCell(withIdentifier: ListTableViewCell.cellIdentifier, for: indexPath) as? ListTableViewCell else { return }
//
////        if indexPath.row == 0 {
////            let lazarettoVC = LazarettoViewController()
////            navigationController?.pushViewController(lazarettoVC, animated: true)
////        }
//    }
    
    
}

