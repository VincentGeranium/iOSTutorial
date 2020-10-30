//
//  ViewController.swift
//  CoronaProject
//
//  Created by 김광준 on 2020/10/23.
//

import UIKit

class MainViewController: UIViewController {

    var tempCoronaNowData: CoronaNowData?
    
    var coronaNowDataList: [CoronaNowData] = []
    
    var isGetData = false
    
    private let listTableView: UITableView = {
        let listTableView: UITableView = UITableView()
        listTableView.register(ListTableViewCell.self, forCellReuseIdentifier: ListTableViewCell.cellIdentifier)
        
        return listTableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
//        getAllCoronaNowData()
        addDelegates()
        addViews()
        xmlParsing()
        
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
    
    private func xmlParsing() {
        let coronaDataURL = "http://openapi.data.go.kr/openapi/service/rest/Covid19/getCovid19SidoInfStateJson?serviceKey=Dmng3ElRum8OIdUuU1Z0NuvDIsfOSvxTO03Tk5gCfwBxbs9UodOlvevA%2FA7%2FgRimX1m1vE1eXoq7BtC4dwaM9A%3D%3D&pageNo=1&numOfRows=10&startCreateDt=20201028&endCreateDt=20201028"
        
        guard let url = URLComponents(string: coronaDataURL)?.url else { return }
        
        guard let xmlParser = XMLParser(contentsOf: url) else { return }
        
        xmlParser.delegate = self
        
        xmlParser.parse()
        
    }


}

extension MainViewController: UITableViewDelegate, UITableViewDataSource, XMLParserDelegate {
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        if elementName == "item" {
            isGetData = true
            tempCoronaNowData = CoronaNowData()
        }
        
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "item" {
            guard let tempCoronaNowData = tempCoronaNowData else { return }
            isGetData = false
            coronaNowDataList.append(tempCoronaNowData)
//            print(coronaNowDataList)
        } else if elementName == "numOfRows" {
            parser.abortParsing()
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if isGetData == true {
            let parsingString = string
            print(parsingString)
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
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

