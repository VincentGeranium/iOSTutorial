//
//  getData.swift
//  rentalHouse
//
//  Created by 김광준 on 2020/10/30.
//

import Foundation
import UIKit
import Alamofire

//func getData() -> [MovieDataStruct] {
//    
//    var movieData :[MovieDataStruct] = {
//        let movieData = [MovieDataStruct]()
//        return movieData
//    }()
//    
//    let formatter = DateFormatter()
//    formatter.dateFormat = "yyyyMMdd"
//    let currentDateString = formatter.string(from: Date())
//    guard let currentDateInt = Int(currentDateString) else { return [] }
//    let currentDateIntMinusOne = currentDateInt - 1
//    print(currentDateIntMinusOne)
//    
//    let header: HTTPHeaders = [
//        "Content-Type" : "application/json"
//    ]
//    
////    let param = [
////        "key" : "7b06ff3186f98faeddbf65439279514f",
////        "targetDt" : "\(currentDateIntMinusOne)",
////        "itemPerPage" : "10",
////        "multiMovieYn" : "Y",
////        "repNationCd" : "K",
////    ]
//    
//    let alamo = AF.request("http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=7b06ff3186f98faeddbf65439279514f&targetDt=\(currentDateIntMinusOne)&itemPerPage=10&multiMovieYn=Y&repNationCd=K", method: HTTPMethod.get, parameters: nil, encoding: JSONEncoding.default, headers: header)
//    
////http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=7b06ff3186f98faeddbf65439279514f&targetDt=20201030&itemPerPage=10&multiMovieYn=Y&repNationCd=K
//    
////    let alamo = AF.request("http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=7b06ff3186f98faeddbf65439279514f&targetDt=20201030&itemPerPage=10&multiMovieYn=Y&repNationCd=K")
//    
//    alamo.responseJSON { (response) in
//        switch response.result {
//        case .success(let success):
////            print(success)
//            do {
//                guard let jsonObject = response.value else { return }
//                guard let jsonObjectDictionary = jsonObject as? NSDictionary else { return }
//                guard let boxOfficeResult = jsonObjectDictionary["boxOfficeResult"] as? NSDictionary else { return }
//                guard let dailyBoxOfficeList = boxOfficeResult["dailyBoxOfficeList"] as? NSArray else { return }
//
//                for row in dailyBoxOfficeList {
//                    guard let r = row as? NSDictionary else { return }
//                        
//                        var movieDataStruct = MovieDataStruct()
//                        
//                        movieDataStruct.audiAcc = r["audiAcc"] as? String
//                        movieDataStruct.movieNm = r["movieNm"] as? String
//                        movieDataStruct.openDt = r["openDt"] as? String
//                        
//                        movieData.append(movieDataStruct)
//                        
//                        print(movieData)
//                }
//            } catch {
//                print(error.localizedDescription)
//            }
//        case .failure(let failure):
//            print(failure.localizedDescription)
//            break
//        }
//    }
//    print(movieData)
//    
//    return movieData
//}
