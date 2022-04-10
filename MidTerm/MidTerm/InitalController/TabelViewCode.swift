//
//  TabelViewCode.swift
//  MidTerm
//
//  Created by admin on 4/10/22.
//

import Foundation
import UIKit

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let rows = stockModel?.count else { return 0 }
        return rows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = Bundle.main.loadNibNamed("StockTableViewCell", owner: self, options: nil)?.first as! StockTableViewCell
        
        guard let stockModel1 = stockModel?[indexPath.row] else {return cell}


        cell.lblSymbol.text = stockModel1.companySymbol
        cell.lblName.text = stockModel1.companyName
        
        
        cell.companyName = stockModel1.companyName
        cell.companySymbol = stockModel1.companySymbol
        cell.sendStockDelegate = self
        
        return cell
    }
    
    
    
}
