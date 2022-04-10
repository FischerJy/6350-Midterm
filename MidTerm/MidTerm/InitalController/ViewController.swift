//
//  ViewController.swift
//  MidTerm
//
//  Created by admin on 4/10/22.
//

import UIKit

class ViewController: UIViewController,  SendStockDelegate{

    

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblSymbol: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblHigh: UILabel!
    @IBOutlet weak var lblLow: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!
    var stockModel : [StockModel]?
    @IBOutlet weak var tblView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       stockModel = initializeCompany()
    }
    func initializeCompany() -> [StockModel]{
            
            let apple = StockModel("Apple Inc.", "AAPL");
            let amazon = StockModel("Amazon.com, Inc.", "AMZN");
            let google = StockModel("Alphabet Inc.", "GOOG");
            let facebook = StockModel("Meta Plaforms, Inc.", "FB");
            let micorsoft = StockModel("Microsoft Corporation", "MSFT");

            var modelArr = [StockModel]()
        
            modelArr.append(apple)
            modelArr.append(amazon)
            modelArr.append(google)
            modelArr.append(facebook)
            modelArr.append(micorsoft)

            return modelArr
        }
        
        
        func sendStockData(_ stockModel: StockModel) {
            lblName.text = stockModel.companyName
            lblSymbol.text = stockModel.companySymbol
            lblPrice.text = "\(stockModel.price)"
            lblLow.text = "\(stockModel.low)"
            lblHigh.text = "\(stockModel.high)"
            print()
        }
}

