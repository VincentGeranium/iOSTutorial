//
//  ViewController.swift
//  CoronaProject
//
//  Created by 김광준 on 2020/10/23.
//

import UIKit
import Alamofire

class MainViewController: UIViewController {
    var transferDataDelegate: TransferDataDelegate?

    var tempCoronaNowData: CoronaNowData?
    
    var coronaNowDataList: [CoronaNowData] = []
    
    var gubunArray: [String] = []
    
    var deathCntArray: [String] = []
    
    var incDecArray: [String] = []
    
    var isolClearCntArray: [String] = []
    
    var defCntArray: [String] = []
    
    var isolIngCntArray: [String] = []
    
    var overFlowCntArray: [String] = []
    
    var isGetItems = false
    
    // 시도명
    var isGetGubun = false
    
    // 누적 사망자 수
    var isGetDeathCnt = false
    
    // 신규확진자수
    var isGetIncDec = false
    
    // 격리 해제 수
    var isGetIsolClearCnt = false
    
    // 총 확진자 수
    var isGetDefCnt = false
    
    // 격리중인 환자 수
    var isGetIsolIngCnt = false
    
    // 해외유입 확진자 수
    var isGetOverFlowCnt = false
    
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
        
        let yesterdayFormat = dateFormatter.string(from: Date.yesterday)
        print("😍😍😍 \(yesterdayFormat)")
        
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
            
            print("⚪️⚪️⚪️⚪️⚪️ 오늘 날짜")
            
        } else {
            paramDate = yesterdayFormat
            
            print("⚪️⚪️⚪️⚪️⚪️ 어제 날짜")
        }
    }
    
    private func setupXMLParsing() {
        
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
        
        if (elementName == "deathCnt" || elementName == "defCnt" || elementName == "gubun" || elementName == "incDec" || elementName == "isolClearCnt" || elementName == "isolIngCnt" || elementName == "overFlowCnt") {
            
            switch elementName {
            case "gubun":
                isGetGubun = true
                
            case "deathCnt":
                isGetDeathCnt = true
                
            case "defCnt":
                isGetDefCnt = true
                
            case "incDec":
                isGetIncDec = true
                
            case "isolClearCnt":
                isGetIsolClearCnt = true
                
            case "isolIngCnt":
                isGetIsolIngCnt = true
                
            case "overFlowCnt":
                isGetOverFlowCnt = true
            default:
                debugPrint(debugDescription)
            }

        }
        
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        if (elementName == "deathCnt" || elementName == "defCnt" || elementName == "gubun" || elementName == "incDec" || elementName == "isolClearCnt" || elementName == "isolIngCnt" || elementName == "overFlowCnt") {
            
            switch elementName {
            case "gubun":
                isGetGubun = false
                
            case "deathCnt":
                isGetDeathCnt = false
                
            case "defCnt":
                isGetDefCnt = false
                
            case "incDec":
                isGetIncDec = false
                
            case "isolClearCnt":
                isGetIsolClearCnt = false
                
            case "isolIngCnt":
                isGetIsolIngCnt = false
                
            case "overFlowCnt":
                isGetOverFlowCnt = false
                
            default:
                debugPrint(debugDescription)
            }

        }
        
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        
        switch true {
        case isGetGubun:
            gubunArray.append(string)
            
        case isGetDeathCnt:
            deathCntArray.append(string)
            
        case isGetDefCnt:
            defCntArray.append(string)
            
        case isGetIncDec:
            incDecArray.append(string)
            
        case isGetIsolClearCnt:
            isolClearCntArray.append(string)
            
        case isGetIsolIngCnt:
            isolIngCntArray.append(string)
            
        case isGetOverFlowCnt:
            overFlowCntArray.append(string)
            
        default:
            return
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: ListTableViewCell.cellIdentifier, for: indexPath) as? ListTableViewCell else { return }

        if indexPath.row == 0 {
            let lazarettoVC = LazarettoViewController()
            lazarettoVC.deathCntData = deathCntArray[0]
            navigationController?.pushViewController(lazarettoVC, animated: true)
        }
    }
    
    
}

