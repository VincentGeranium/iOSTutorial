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
    
    var localOccCntArray: [String] = []
    
    var deathCntArray: [String] = []
    
    var incDecArray: [String] = []
    
    var isolClearCntArray: [String] = []
    
    var isolIngCntArray: [String] = []
    
    var defCntArray: [String] = []
    
    var overFlowCntArray: [String] = []
    
    var createDtArray: [String] = []
    
    var stdDayArray: [String] = []
    
    var dateArray: [String] = []
    
    var timeArray: [String] = []
    
    var isGetItems = false
    
    // 시도명
    var isGetGubun = false
    
    // 지역내 환자 발생 수
    var isLocalOccCnt = false
    
    // 누적 사망자 수
    var isGetDeathCnt = false
    
    // 신규 확진자 수
    var isGetIncDec = false
    
    // 격리 해제 수
    var isGetIsolClearCnt = false
    
    // 격리중인 환자 수
    var isGetIsolIngCnt = false
    
    // 총 확진자 수
    var isGetDefCnt = false
    
    // 해외유입 수
    var isGetOverFlowCnt = false
    
    // 통계 데이터 등록일시
    var isGetCreateDt = false
    
    // 통계 데이터 기준일시
    var isGetStdDay = false
    
    
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
        self.view.backgroundColor = .black
        
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        self.listTableView.separatorColor = .black
        
        self.title = "전국 시.도명"
        
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
        
        if (elementName == "deathCnt" || elementName == "defCnt" || elementName == "gubun" || elementName == "incDec" || elementName == "isolClearCnt" || elementName == "isolIngCnt" || elementName == "overFlowCnt" || elementName == "createDt" || elementName == "stdDay" || elementName == "localOccCnt") {
            
            switch elementName {
            case "gubun":
                isGetGubun = true
                
            case "localOccCnt":
                isLocalOccCnt = true
                
            case "deathCnt":
                isGetDeathCnt = true
                
            case "incDec":
                isGetIncDec = true

            case "isolClearCnt":
                isGetIsolClearCnt = true
                
            case "isolIngCnt":
                isGetIsolIngCnt = true

            case "defCnt":
                isGetDefCnt = true
                
            case "overFlowCnt":
                isGetOverFlowCnt = true
                
            case "createDt":
                isGetCreateDt = true
                
            case "stdDay":
                isGetStdDay = true
                
            default:
                debugPrint(debugDescription)
            }

        }
        
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        if (elementName == "createDt" || elementName == "deathCnt" || elementName == "defCnt" || elementName == "gubun" || elementName == "incDec" || elementName == "isolClearCnt" || elementName == "isolIngCnt" || elementName == "localOccCnt" || elementName == "overFlowCnt" || elementName == "stdDay") {
            
            switch elementName {
            case "gubun":
                isGetGubun = false
                
            case "localOccCnt":
                isLocalOccCnt = false
                
            case "deathCnt":
                isGetDeathCnt = false
                
            case "incDec":
                isGetIncDec = false
                
            case "isolClearCnt":
                isGetIsolClearCnt = false
                
            case "isolIngCnt":
                isGetIsolIngCnt = false
                
            case "defCnt":
                isGetDefCnt = false

            case "overFlowCnt":
                isGetOverFlowCnt = false
                
            case "createDt":
                isGetCreateDt = false
                
            case "stdDay":
                isGetStdDay = false
                
                
            default:
                debugPrint(debugDescription)
            }

        }
        
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        
        switch true {
        case isGetGubun:
            gubunArray.append(string)
            
        case isLocalOccCnt:
            localOccCntArray.append(string)
            
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
            
        case isGetCreateDt:
            let filterdDate = string.components(separatedBy: " ").filter { $0.contains("-") }
            dateArray.append(contentsOf: filterdDate)

            let filterdTime = string.components(separatedBy: ["."," "]).filter { $0.count > 3 && $0.contains(":") }
            timeArray.append(contentsOf: filterdTime)
    
        case isGetStdDay:
//            print(string)
//            stdDayArray.append(string)
//            print(stdDayArray)
            fallthrough
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
        
        // switch로 refactoring 필요.

        if indexPath.row == 0 {
            let lazarettoVC = CommonViewController()
            
            lazarettoVC.gubuntData = gubunArray[indexPath.row]
            lazarettoVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            lazarettoVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            lazarettoVC.defCntData = defCntArray[indexPath.row]
            lazarettoVC.incDecData = incDecArray[indexPath.row]
            lazarettoVC.isolIngCntData = isolIngCntArray[indexPath.row]
            lazarettoVC.isolClearCntData = isolClearCntArray[indexPath.row]
            lazarettoVC.deathCntData = deathCntArray[indexPath.row]
            lazarettoVC.localOccCntData = localOccCntArray[indexPath.row]
            lazarettoVC.overFlowCntData = overFlowCntArray[indexPath.row]
            lazarettoVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(lazarettoVC, animated: true)
            
        } else if indexPath.row == 1 {
            let jejuVC = CommonViewController()
            
            jejuVC.gubuntData = gubunArray[indexPath.row]
            jejuVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            jejuVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            jejuVC.defCntData = defCntArray[indexPath.row]
            jejuVC.incDecData = incDecArray[indexPath.row]
            jejuVC.isolIngCntData = isolIngCntArray[indexPath.row]
            jejuVC.isolClearCntData = isolClearCntArray[indexPath.row]
            jejuVC.deathCntData = deathCntArray[indexPath.row]
            jejuVC.localOccCntData = localOccCntArray[indexPath.row]
            jejuVC.overFlowCntData = overFlowCntArray[indexPath.row]
            jejuVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(jejuVC, animated: true)
            
        } else if indexPath.row == 2 {
            
            let gyeongnamVC = CommonViewController()
            
            gyeongnamVC.gubuntData = gubunArray[indexPath.row]
            gyeongnamVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            gyeongnamVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            gyeongnamVC.defCntData = defCntArray[indexPath.row]
            gyeongnamVC.incDecData = incDecArray[indexPath.row]
            gyeongnamVC.isolIngCntData = isolIngCntArray[indexPath.row]
            gyeongnamVC.isolClearCntData = isolClearCntArray[indexPath.row]
            gyeongnamVC.deathCntData = deathCntArray[indexPath.row]
            gyeongnamVC.localOccCntData = localOccCntArray[indexPath.row]
            gyeongnamVC.overFlowCntData = overFlowCntArray[indexPath.row]
            gyeongnamVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(gyeongnamVC, animated: true)
            
        } else if indexPath.row == 3 {
            
            let gyeongbukVC = CommonViewController()
            
            gyeongbukVC.gubuntData = gubunArray[indexPath.row]
            gyeongbukVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            gyeongbukVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            gyeongbukVC.defCntData = defCntArray[indexPath.row]
            gyeongbukVC.incDecData = incDecArray[indexPath.row]
            gyeongbukVC.isolIngCntData = isolIngCntArray[indexPath.row]
            gyeongbukVC.isolClearCntData = isolClearCntArray[indexPath.row]
            gyeongbukVC.deathCntData = deathCntArray[indexPath.row]
            gyeongbukVC.localOccCntData = localOccCntArray[indexPath.row]
            gyeongbukVC.overFlowCntData = overFlowCntArray[indexPath.row]
            gyeongbukVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(gyeongbukVC, animated: true)
            
        } else if indexPath.row == 4 {
            
            let JeolnamVC = CommonViewController()
            
            JeolnamVC.gubuntData = gubunArray[indexPath.row]
            JeolnamVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            JeolnamVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            JeolnamVC.defCntData = defCntArray[indexPath.row]
            JeolnamVC.incDecData = incDecArray[indexPath.row]
            JeolnamVC.isolIngCntData = isolIngCntArray[indexPath.row]
            JeolnamVC.isolClearCntData = isolClearCntArray[indexPath.row]
            JeolnamVC.deathCntData = deathCntArray[indexPath.row]
            JeolnamVC.localOccCntData = localOccCntArray[indexPath.row]
            JeolnamVC.overFlowCntData = overFlowCntArray[indexPath.row]
            JeolnamVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(JeolnamVC, animated: true)
            
        } else if indexPath.row == 5 {
            
            let JeolbukVC = CommonViewController()
            
            JeolbukVC.gubuntData = gubunArray[indexPath.row]
            JeolbukVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            JeolbukVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            JeolbukVC.defCntData = defCntArray[indexPath.row]
            JeolbukVC.incDecData = incDecArray[indexPath.row]
            JeolbukVC.isolIngCntData = isolIngCntArray[indexPath.row]
            JeolbukVC.isolClearCntData = isolClearCntArray[indexPath.row]
            JeolbukVC.deathCntData = deathCntArray[indexPath.row]
            JeolbukVC.localOccCntData = localOccCntArray[indexPath.row]
            JeolbukVC.overFlowCntData = overFlowCntArray[indexPath.row]
            JeolbukVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(JeolbukVC, animated: true)
            
        } else if indexPath.row == 6 {
            
            let chungnamVC = CommonViewController()
            
            chungnamVC.gubuntData = gubunArray[indexPath.row]
            chungnamVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            chungnamVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            chungnamVC.defCntData = defCntArray[indexPath.row]
            chungnamVC.incDecData = incDecArray[indexPath.row]
            chungnamVC.isolIngCntData = isolIngCntArray[indexPath.row]
            chungnamVC.isolClearCntData = isolClearCntArray[indexPath.row]
            chungnamVC.deathCntData = deathCntArray[indexPath.row]
            chungnamVC.localOccCntData = localOccCntArray[indexPath.row]
            chungnamVC.overFlowCntData = overFlowCntArray[indexPath.row]
            chungnamVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(chungnamVC, animated: true)
            
        } else if indexPath.row == 7 {
            
            let chungbukVC = CommonViewController()
            
            chungbukVC.gubuntData = gubunArray[indexPath.row]
            chungbukVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            chungbukVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            chungbukVC.defCntData = defCntArray[indexPath.row]
            chungbukVC.incDecData = incDecArray[indexPath.row]
            chungbukVC.isolIngCntData = isolIngCntArray[indexPath.row]
            chungbukVC.isolClearCntData = isolClearCntArray[indexPath.row]
            chungbukVC.deathCntData = deathCntArray[indexPath.row]
            chungbukVC.localOccCntData = localOccCntArray[indexPath.row]
            chungbukVC.overFlowCntData = overFlowCntArray[indexPath.row]
            chungbukVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(chungbukVC, animated: true)
            
        } else if indexPath.row == 8 {
            
            let gangwonVC = CommonViewController()
            
            gangwonVC.gubuntData = gubunArray[indexPath.row]
            gangwonVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            gangwonVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            gangwonVC.defCntData = defCntArray[indexPath.row]
            gangwonVC.incDecData = incDecArray[indexPath.row]
            gangwonVC.isolIngCntData = isolIngCntArray[indexPath.row]
            gangwonVC.isolClearCntData = isolClearCntArray[indexPath.row]
            gangwonVC.deathCntData = deathCntArray[indexPath.row]
            gangwonVC.localOccCntData = localOccCntArray[indexPath.row]
            gangwonVC.overFlowCntData = overFlowCntArray[indexPath.row]
            gangwonVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(gangwonVC, animated: true)
            
        } else if indexPath.row == 9 {
            
            let gyeonggiVC = CommonViewController()
            
            gyeonggiVC.gubuntData = gubunArray[indexPath.row]
            gyeonggiVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            gyeonggiVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            gyeonggiVC.defCntData = defCntArray[indexPath.row]
            gyeonggiVC.incDecData = incDecArray[indexPath.row]
            gyeonggiVC.isolIngCntData = isolIngCntArray[indexPath.row]
            gyeonggiVC.isolClearCntData = isolClearCntArray[indexPath.row]
            gyeonggiVC.deathCntData = deathCntArray[indexPath.row]
            gyeonggiVC.localOccCntData = localOccCntArray[indexPath.row]
            gyeonggiVC.overFlowCntData = overFlowCntArray[indexPath.row]
            gyeonggiVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(gyeonggiVC, animated: true)
            
        } else if indexPath.row == 10 {
            
            let sejongVC = CommonViewController()
            
            sejongVC.gubuntData = gubunArray[indexPath.row]
            sejongVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            sejongVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            sejongVC.defCntData = defCntArray[indexPath.row]
            sejongVC.incDecData = incDecArray[indexPath.row]
            sejongVC.isolIngCntData = isolIngCntArray[indexPath.row]
            sejongVC.isolClearCntData = isolClearCntArray[indexPath.row]
            sejongVC.deathCntData = deathCntArray[indexPath.row]
            sejongVC.localOccCntData = localOccCntArray[indexPath.row]
            sejongVC.overFlowCntData = overFlowCntArray[indexPath.row]
            sejongVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(sejongVC, animated: true)
            
        } else if indexPath.row == 11 {
            
            let ulsanVC = CommonViewController()
            
            ulsanVC.gubuntData = gubunArray[indexPath.row]
            ulsanVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            ulsanVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            ulsanVC.defCntData = defCntArray[indexPath.row]
            ulsanVC.incDecData = incDecArray[indexPath.row]
            ulsanVC.isolIngCntData = isolIngCntArray[indexPath.row]
            ulsanVC.isolClearCntData = isolClearCntArray[indexPath.row]
            ulsanVC.deathCntData = deathCntArray[indexPath.row]
            ulsanVC.localOccCntData = localOccCntArray[indexPath.row]
            ulsanVC.overFlowCntData = overFlowCntArray[indexPath.row]
            ulsanVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(ulsanVC, animated: true)
            
        } else if indexPath.row == 12 {
            /// Lovely ma hometown. always peaceful city.
            let daejeonVC = CommonViewController()
            
            daejeonVC.gubuntData = gubunArray[indexPath.row]
            daejeonVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            daejeonVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            daejeonVC.defCntData = defCntArray[indexPath.row]
            daejeonVC.incDecData = incDecArray[indexPath.row]
            daejeonVC.isolIngCntData = isolIngCntArray[indexPath.row]
            daejeonVC.isolClearCntData = isolClearCntArray[indexPath.row]
            daejeonVC.deathCntData = deathCntArray[indexPath.row]
            daejeonVC.localOccCntData = localOccCntArray[indexPath.row]
            daejeonVC.overFlowCntData = overFlowCntArray[indexPath.row]
            daejeonVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(daejeonVC, animated: true)
            
        } else if indexPath.row == 13 {
            
            let gwangjuVC = CommonViewController()
            
            gwangjuVC.gubuntData = gubunArray[indexPath.row]
            gwangjuVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            gwangjuVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            gwangjuVC.defCntData = defCntArray[indexPath.row]
            gwangjuVC.incDecData = incDecArray[indexPath.row]
            gwangjuVC.isolIngCntData = isolIngCntArray[indexPath.row]
            gwangjuVC.isolClearCntData = isolClearCntArray[indexPath.row]
            gwangjuVC.deathCntData = deathCntArray[indexPath.row]
            gwangjuVC.localOccCntData = localOccCntArray[indexPath.row]
            gwangjuVC.overFlowCntData = overFlowCntArray[indexPath.row]
            gwangjuVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(gwangjuVC, animated: true)
            
        } else if indexPath.row == 14 {
            
            let incheonVC = CommonViewController()
            
            incheonVC.gubuntData = gubunArray[indexPath.row]
            incheonVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            incheonVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            incheonVC.defCntData = defCntArray[indexPath.row]
            incheonVC.incDecData = incDecArray[indexPath.row]
            incheonVC.isolIngCntData = isolIngCntArray[indexPath.row]
            incheonVC.isolClearCntData = isolClearCntArray[indexPath.row]
            incheonVC.deathCntData = deathCntArray[indexPath.row]
            incheonVC.localOccCntData = localOccCntArray[indexPath.row]
            incheonVC.overFlowCntData = overFlowCntArray[indexPath.row]
            incheonVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(incheonVC, animated: true)
            
        } else if indexPath.row == 15 {
            
            let daeguVC = CommonViewController()
            
            daeguVC.gubuntData = gubunArray[indexPath.row]
            daeguVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            daeguVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            daeguVC.defCntData = defCntArray[indexPath.row]
            daeguVC.incDecData = incDecArray[indexPath.row]
            daeguVC.isolIngCntData = isolIngCntArray[indexPath.row]
            daeguVC.isolClearCntData = isolClearCntArray[indexPath.row]
            daeguVC.deathCntData = deathCntArray[indexPath.row]
            daeguVC.localOccCntData = localOccCntArray[indexPath.row]
            daeguVC.overFlowCntData = overFlowCntArray[indexPath.row]
            daeguVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(daeguVC, animated: true)
            
        } else if indexPath.row == 16 {
            
            let busanVC = CommonViewController()
            
            busanVC.gubuntData = gubunArray[indexPath.row]
            busanVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            busanVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            busanVC.defCntData = defCntArray[indexPath.row]
            busanVC.incDecData = incDecArray[indexPath.row]
            busanVC.isolIngCntData = isolIngCntArray[indexPath.row]
            busanVC.isolClearCntData = isolClearCntArray[indexPath.row]
            busanVC.deathCntData = deathCntArray[indexPath.row]
            busanVC.localOccCntData = localOccCntArray[indexPath.row]
            busanVC.overFlowCntData = overFlowCntArray[indexPath.row]
            busanVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(busanVC, animated: true)
            
        } else if indexPath.row == 17 {
            
            let seoulVC = CommonViewController()
            
            seoulVC.gubuntData = gubunArray[indexPath.row]
            seoulVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            seoulVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            seoulVC.defCntData = defCntArray[indexPath.row]
            seoulVC.incDecData = incDecArray[indexPath.row]
            seoulVC.isolIngCntData = isolIngCntArray[indexPath.row]
            seoulVC.isolClearCntData = isolClearCntArray[indexPath.row]
            seoulVC.deathCntData = deathCntArray[indexPath.row]
            seoulVC.localOccCntData = localOccCntArray[indexPath.row]
            seoulVC.overFlowCntData = overFlowCntArray[indexPath.row]
            seoulVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(seoulVC, animated: true)
            
        } else if indexPath.row == 18 {
            
            let totalVC = CommonViewController()
            
            totalVC.gubuntData = gubunArray[indexPath.row]
            totalVC.createDtData = "\(dateArray[indexPath.row])\n\(timeArray[indexPath.row])"
            totalVC.stdDayData = "\(dateArray[indexPath.row])\n00:00:00"
            totalVC.defCntData = defCntArray[indexPath.row]
            totalVC.incDecData = incDecArray[indexPath.row]
            totalVC.isolIngCntData = isolIngCntArray[indexPath.row]
            totalVC.isolClearCntData = isolClearCntArray[indexPath.row]
            totalVC.deathCntData = deathCntArray[indexPath.row]
            totalVC.localOccCntData = localOccCntArray[indexPath.row]
            totalVC.overFlowCntData = overFlowCntArray[indexPath.row]
            totalVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(totalVC, animated: true)
            
        }
    }
    
    
}

