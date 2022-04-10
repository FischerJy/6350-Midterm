//
//  NetworkFunctions.swift
//  MidTerm
//
//  Created by admin on 4/10/22.
//

import Foundation
import PromiseKit
import Alamofire
import SwiftyJSON




func getStockURL(_ companySymbol : String) -> String{
    let url = "\(stockURL)\(companySymbol)?apikey=\(apiKey)"
    return url
}



func getStock(_ url : String) -> Promise<StockModel>{
    
    return Promise<StockModel> { seal -> Void in
        
        AF.request(url).responseJSON { response in
        
            if response.error != nil {
                seal.reject(response.error!)
            }
            
            let stockModel = StockModel("", "")
            //get data here
            let stockArray = JSON(response.data!).arrayValue
            
            guard let stock = stockArray.first else {return seal.fulfill(stockModel)}
            
            stockModel.companyName = stock["name"].stringValue
            stockModel.companySymbol = stock["symbol"].stringValue
            stockModel.price = stock["price"].doubleValue
            stockModel.low = stock["dayLow"].doubleValue
            stockModel.high = stock["dayHigh"].doubleValue
            
            seal.fulfill(stockModel)

        }// end of response
    }// end is return Promise
}
