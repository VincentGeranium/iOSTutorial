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
    
    var createDtArray: [String] = []
    
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
    
    // 등록일시
    var isGetCreateDt = false
    
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
        
        if (elementName == "deathCnt" || elementName == "defCnt" || elementName == "gubun" || elementName == "incDec" || elementName == "isolClearCnt" || elementName == "isolIngCnt" || elementName == "overFlowCnt" || elementName == "createDt") {
            
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
                
            case "createDt":
                isGetCreateDt = true
                
            default:
                debugPrint(debugDescription)
            }

        }
        
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        if (elementName == "deathCnt" || elementName == "defCnt" || elementName == "gubun" || elementName == "incDec" || elementName == "isolClearCnt" || elementName == "isolIngCnt" || elementName == "overFlowCnt" || elementName == "createDt") {
            
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
                
            case "createDt":
                isGetCreateDt = false
                
            default:
                debugPrint(debugDescription)
            }

        }
        
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        
        let dateFormatter = DateFormatter()
        
        
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
            
        case isGetCreateDt:

            createDtArray.append(string)
            
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
            
            lazarettoVC.gubuntData = gubunArray[0]
            lazarettoVC.createDtData = createDtArray[0]
            lazarettoVC.deathCntData = deathCntArray[0]
            lazarettoVC.incDecData = incDecArray[0]
            lazarettoVC.isolClearCntData = isolClearCntArray[0]
            lazarettoVC.defCntData = defCntArray[0]
            lazarettoVC.isolIngCntData = isolIngCntArray[0]
            lazarettoVC.overFlowCntData = overFlowCntArray[0]
            lazarettoVC.title = gubunArray[0]
            
            navigationController?.pushViewController(lazarettoVC, animated: true)
            
        } else if indexPath.row == 1 {
            let jejuVC = CommonViewController()
            
            jejuVC.gubuntData = gubunArray[1]
            jejuVC.createDtData = createDtArray[1]
            jejuVC.deathCntData = deathCntArray[1]
            jejuVC.incDecData = incDecArray[1]
            jejuVC.isolClearCntData = isolClearCntArray[1]
            jejuVC.defCntData = defCntArray[1]
            jejuVC.isolIngCntData = isolIngCntArray[1]
            jejuVC.overFlowCntData = overFlowCntArray[1]
            jejuVC.title = gubunArray[1]
            
            navigationController?.pushViewController(jejuVC, animated: true)
            
        } else if indexPath.row == 2 {
            
            let gyeongnamVC = CommonViewController()
            
            gyeongnamVC.gubuntData = gubunArray[2]
            gyeongnamVC.createDtData = createDtArray[2]
            gyeongnamVC.deathCntData = deathCntArray[2]
            gyeongnamVC.incDecData = incDecArray[2]
            gyeongnamVC.isolClearCntData = isolClearCntArray[2]
            gyeongnamVC.defCntData = defCntArray[2]
            gyeongnamVC.isolIngCntData = isolIngCntArray[2]
            gyeongnamVC.overFlowCntData = overFlowCntArray[2]
            gyeongnamVC.title = gubunArray[2]
            
            navigationController?.pushViewController(gyeongnamVC, animated: true)
            
        } else if indexPath.row == 3 {
            
            let gyeongbukVC = CommonViewController()
            
            gyeongbukVC.gubuntData = gubunArray[3]
            gyeongbukVC.createDtData = createDtArray[3]
            gyeongbukVC.deathCntData = deathCntArray[3]
            gyeongbukVC.incDecData = incDecArray[3]
            gyeongbukVC.isolClearCntData = isolClearCntArray[3]
            gyeongbukVC.defCntData = defCntArray[3]
            gyeongbukVC.isolIngCntData = isolIngCntArray[3]
            gyeongbukVC.overFlowCntData = overFlowCntArray[3]
            gyeongbukVC.title = gubunArray[3]
            
            navigationController?.pushViewController(gyeongbukVC, animated: true)
            
        } else if indexPath.row == 4 {
            
            let JeolnamVC = CommonViewController()
            
            JeolnamVC.gubuntData = gubunArray[4]
            JeolnamVC.createDtData = createDtArray[4]
            JeolnamVC.deathCntData = deathCntArray[4]
            JeolnamVC.incDecData = incDecArray[4]
            JeolnamVC.isolClearCntData = isolClearCntArray[4]
            JeolnamVC.defCntData = defCntArray[4]
            JeolnamVC.isolIngCntData = isolIngCntArray[4]
            JeolnamVC.overFlowCntData = overFlowCntArray[4]
            JeolnamVC.title = gubunArray[4]
            
            navigationController?.pushViewController(JeolnamVC, animated: true)
            
        } else if indexPath.row == 5 {
            
            let JeolbukVC = CommonViewController()
            
            JeolbukVC.gubuntData = gubunArray[5]
            JeolbukVC.createDtData = createDtArray[5]
            JeolbukVC.deathCntData = deathCntArray[5]
            JeolbukVC.incDecData = incDecArray[5]
            JeolbukVC.isolClearCntData = isolClearCntArray[5]
            JeolbukVC.defCntData = defCntArray[5]
            JeolbukVC.isolIngCntData = isolIngCntArray[5]
            JeolbukVC.overFlowCntData = overFlowCntArray[5]
            JeolbukVC.title = gubunArray[5]
            
            navigationController?.pushViewController(JeolbukVC, animated: true)
            
        } else if indexPath.row == 6 {
            
            let chungnamVC = CommonViewController()
            
            chungnamVC.gubuntData = gubunArray[6]
            chungnamVC.createDtData = createDtArray[6]
            chungnamVC.deathCntData = deathCntArray[6]
            chungnamVC.incDecData = incDecArray[6]
            chungnamVC.isolClearCntData = isolClearCntArray[6]
            chungnamVC.defCntData = defCntArray[6]
            chungnamVC.isolIngCntData = isolIngCntArray[6]
            chungnamVC.overFlowCntData = overFlowCntArray[6]
            chungnamVC.title = gubunArray[6]
            
            navigationController?.pushViewController(chungnamVC, animated: true)
            
        } else if indexPath.row == 7 {
            
            let chungbukVC = CommonViewController()
            
            chungbukVC.gubuntData = gubunArray[7]
            chungbukVC.createDtData = createDtArray[7]
            chungbukVC.deathCntData = deathCntArray[7]
            chungbukVC.incDecData = incDecArray[7]
            chungbukVC.isolClearCntData = isolClearCntArray[7]
            chungbukVC.defCntData = defCntArray[7]
            chungbukVC.isolIngCntData = isolIngCntArray[7]
            chungbukVC.overFlowCntData = overFlowCntArray[7]
            chungbukVC.title = gubunArray[7]
            
            navigationController?.pushViewController(chungbukVC, animated: true)
            
        } else if indexPath.row == 8 {
            
            let gangwonVC = CommonViewController()
            
            gangwonVC.gubuntData = gubunArray[8]
            gangwonVC.createDtData = createDtArray[8]
            gangwonVC.deathCntData = deathCntArray[8]
            gangwonVC.incDecData = incDecArray[8]
            gangwonVC.isolClearCntData = isolClearCntArray[8]
            gangwonVC.defCntData = defCntArray[8]
            gangwonVC.isolIngCntData = isolIngCntArray[8]
            gangwonVC.overFlowCntData = overFlowCntArray[8]
            gangwonVC.title = gubunArray[8]
            
            navigationController?.pushViewController(gangwonVC, animated: true)
            
        } else if indexPath.row == 9 {
            
            let gyeonggiVC = CommonViewController()
            
            gyeonggiVC.gubuntData = gubunArray[9]
            gyeonggiVC.createDtData = createDtArray[9]
            gyeonggiVC.deathCntData = deathCntArray[9]
            gyeonggiVC.incDecData = incDecArray[9]
            gyeonggiVC.isolClearCntData = isolClearCntArray[9]
            gyeonggiVC.defCntData = defCntArray[9]
            gyeonggiVC.isolIngCntData = isolIngCntArray[9]
            gyeonggiVC.overFlowCntData = overFlowCntArray[9]
            gyeonggiVC.title = gubunArray[9]
            
            navigationController?.pushViewController(gyeonggiVC, animated: true)
            
        } else if indexPath.row == 10 {
            
            let sejongVC = CommonViewController()
            
            sejongVC.gubuntData = gubunArray[10]
            sejongVC.createDtData = createDtArray[10]
            sejongVC.deathCntData = deathCntArray[10]
            sejongVC.incDecData = incDecArray[10]
            sejongVC.isolClearCntData = isolClearCntArray[10]
            sejongVC.defCntData = defCntArray[10]
            sejongVC.isolIngCntData = isolIngCntArray[10]
            sejongVC.overFlowCntData = overFlowCntArray[10]
            sejongVC.title = gubunArray[10]
            
            navigationController?.pushViewController(sejongVC, animated: true)
            
        } else if indexPath.row == 11 {
            
            let ulsanVC = CommonViewController()
            
            ulsanVC.gubuntData = gubunArray[11]
            ulsanVC.createDtData = createDtArray[11]
            ulsanVC.deathCntData = deathCntArray[11]
            ulsanVC.incDecData = incDecArray[11]
            ulsanVC.isolClearCntData = isolClearCntArray[11]
            ulsanVC.defCntData = defCntArray[11]
            ulsanVC.isolIngCntData = isolIngCntArray[11]
            ulsanVC.overFlowCntData = overFlowCntArray[11]
            ulsanVC.title = gubunArray[11]
            
            navigationController?.pushViewController(ulsanVC, animated: true)
            
        } else if indexPath.row == 12 {
            /// Love ma hometown
            let daejeonVC = CommonViewController()
            
            daejeonVC.gubuntData = gubunArray[12]
            daejeonVC.createDtData = createDtArray[12]
            daejeonVC.deathCntData = deathCntArray[12]
            daejeonVC.incDecData = incDecArray[12]
            daejeonVC.isolClearCntData = isolClearCntArray[12]
            daejeonVC.defCntData = defCntArray[12]
            daejeonVC.isolIngCntData = isolIngCntArray[12]
            daejeonVC.overFlowCntData = overFlowCntArray[12]
            daejeonVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(daejeonVC, animated: true)
            
        } else if indexPath.row == 13 {
            
            let gwangjuVC = CommonViewController()
            
            gwangjuVC.gubuntData = gubunArray[13]
            gwangjuVC.createDtData = createDtArray[13]
            gwangjuVC.deathCntData = deathCntArray[13]
            gwangjuVC.incDecData = incDecArray[13]
            gwangjuVC.isolClearCntData = isolClearCntArray[13]
            gwangjuVC.defCntData = defCntArray[13]
            gwangjuVC.isolIngCntData = isolIngCntArray[13]
            gwangjuVC.overFlowCntData = overFlowCntArray[13]
            gwangjuVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(gwangjuVC, animated: true)
            
        } else if indexPath.row == 14 {
            
            let incheonVC = CommonViewController()
            
            incheonVC.gubuntData = gubunArray[14]
            incheonVC.createDtData = createDtArray[14]
            incheonVC.deathCntData = deathCntArray[14]
            incheonVC.incDecData = incDecArray[14]
            incheonVC.isolClearCntData = isolClearCntArray[14]
            incheonVC.defCntData = defCntArray[14]
            incheonVC.isolIngCntData = isolIngCntArray[14]
            incheonVC.overFlowCntData = overFlowCntArray[14]
            incheonVC.title = gubunArray[14]
            
            navigationController?.pushViewController(incheonVC, animated: true)
            
        } else if indexPath.row == 15 {
            
            let daeguVC = CommonViewController()
            
            daeguVC.gubuntData = gubunArray[indexPath.row]
            daeguVC.createDtData = createDtArray[indexPath.row]
            daeguVC.deathCntData = deathCntArray[indexPath.row]
            daeguVC.incDecData = incDecArray[indexPath.row]
            daeguVC.isolClearCntData = isolClearCntArray[indexPath.row]
            daeguVC.defCntData = defCntArray[indexPath.row]
            daeguVC.isolIngCntData = isolIngCntArray[indexPath.row]
            daeguVC.overFlowCntData = overFlowCntArray[indexPath.row]
            daeguVC.title = gubunArray[indexPath.row]
            
            navigationController?.pushViewController(daeguVC, animated: true)
            
        } else if indexPath.row == 16 {
            
            let busanVC = CommonViewController()
            
            busanVC.gubuntData = gubunArray[16]
            busanVC.createDtData = createDtArray[16]
            busanVC.deathCntData = deathCntArray[16]
            busanVC.incDecData = incDecArray[16]
            busanVC.isolClearCntData = isolClearCntArray[16]
            busanVC.defCntData = defCntArray[16]
            busanVC.isolIngCntData = isolIngCntArray[16]
            busanVC.overFlowCntData = overFlowCntArray[16]
            busanVC.title = gubunArray[16]
            
            navigationController?.pushViewController(busanVC, animated: true)
            
        } else if indexPath.row == 17 {
            
            let seoulVC = CommonViewController()
            
            seoulVC.gubuntData = gubunArray[17]
            seoulVC.createDtData = createDtArray[17]
            seoulVC.deathCntData = deathCntArray[17]
            seoulVC.incDecData = incDecArray[17]
            seoulVC.isolClearCntData = isolClearCntArray[17]
            seoulVC.defCntData = defCntArray[17]
            seoulVC.isolIngCntData = isolIngCntArray[17]
            seoulVC.overFlowCntData = overFlowCntArray[17]
            seoulVC.title = gubunArray[17]
            
            navigationController?.pushViewController(seoulVC, animated: true)
            
        } else if indexPath.row == 18 {
            
            let totalVC = CommonViewController()
            
            totalVC.gubuntData = gubunArray[18]
            totalVC.createDtData = createDtArray[18]
            totalVC.deathCntData = deathCntArray[18]
            totalVC.incDecData = incDecArray[18]
            totalVC.isolClearCntData = isolClearCntArray[18]
            totalVC.defCntData = defCntArray[18]
            totalVC.isolIngCntData = isolIngCntArray[18]
            totalVC.overFlowCntData = overFlowCntArray[18]
            totalVC.title = gubunArray[18]
            
            navigationController?.pushViewController(totalVC, animated: true)
            
        }
    }
    
    
}

