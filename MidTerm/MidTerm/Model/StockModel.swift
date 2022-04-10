//
//  StockModel.swift
//  MidTerm
//
//  Created by admin on 4/10/22.
//

import Foundation
class StockModel{
    init(_ companyName : String, _ companySymbol : String ){
        
        self.companyName = companyName
        self.companySymbol = companySymbol
    }
    
    var companyName = ""
    var companySymbol = ""
    var price : Double = 0.0
    var high : Double = 0.0
    var low : Double = 0.0
    
}

