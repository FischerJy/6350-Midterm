//
//  StockTableViewCell.swift
//  MidTerm
//
//  Created by admin on 4/10/22.
//

import UIKit

class StockTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    
    
    @IBOutlet weak var lblSymbol: UILabel!
    
    var companyName = ""
    var companySymbol = ""
    var sendStockDelegate : SendStockDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    
    @IBAction func gstStock(_ sender: Any) {
        let stockURL = getStockURL(companySymbol)
        getStock(stockURL).done{stockModel in
                                stockModel.companyName = self.companyName
                                self.sendStockDelegate?.sendStockData(stockModel)
        }
        .catch{ error in
            print(error.localizedDescription)
        }
    }
}
