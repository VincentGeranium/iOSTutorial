//
//  ViewController.swift
//  swiftXMLparsingTutorial
//
//  Created by 김광준 on 2020/11/13.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var label: UILabel = {
        let label: UILabel = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 10)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "asd"
        label.layer.borderWidth = 1.0
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.cornerRadius = 10
        return label
    }()
    
    var xmlParser = XMLParser()
    var stringXMLData: String = ""
    var currentElement: String = ""
    var passData: Bool = false
    var passName: Bool = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let url:String="http://api.androidhive.info/pizza/?format=xml"
        let urlToSend: URL = URL(string: url)!
        // Parse the XML
        xmlParser = XMLParser(contentsOf: urlToSend)!
        xmlParser.delegate = self
        
        let success:Bool = xmlParser.parse()
        
        if success {
            print("parse success!")
            
            print(stringXMLData)
            
            label.text=stringXMLData
            
        } else {
            print("parse failure!")
        }
        
//        setupXMLParsing()
//
//        xmlParser.delegate = self
        
        setLabel()
    }
    
    private func setLabel() {
        let guide = self.view.safeAreaLayoutGuide
        
        self.label.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: guide.topAnchor,constant: 20),
            label.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
            label.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -20),
        ])
    }
    
    private func setupXMLParsing() {
        let urlOrigin: String = "http://api.androidhive.info/pizza/?format=xml"
        
        guard let url = URL(string: urlOrigin) else { return }
        
        guard let parsingXML = XMLParser(contentsOf: url) else { return }
        
        xmlParser = parsingXML
        
        let xmlParsingResult: Bool = xmlParser.parse()
        
        if xmlParsingResult {
            print("XML Parsing Sucess")
            
            print("🎾🎾🎾 stringXMLData : \(stringXMLData)")
            
            label.text = stringXMLData
        } else {
            print("XML Parsing Fail")
            
        }
    }
    
}


extension ViewController: XMLParserDelegate {
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        print("🔴 : Active first line of Extension Parser methods")
        
        currentElement = elementName
        
        if (elementName == "id" || elementName == "name" || elementName == "cost" || elementName == "description") {
            if elementName == "name" {
                passName = true
            }
            passData = true
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        print("🔴🔴 : Active second line of Extension Parser methods")
        
        currentElement = ""
        
        if (elementName == "id" || elementName == "name" || elementName == "cost" || elementName == "description") {
            if elementName == "name" {
                passName = false
            }
            passData = false
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if passName == true {
            stringXMLData = stringXMLData + "\n\n" + string
        }
        
        if passData == true {
            print(string)
        }
    }
    
    func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
        print("XML Parser Error : \(parseError)")
    }
    
}

