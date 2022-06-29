//
//  ViewController.swift
//  ByteCoin
//
//  Created by tetsuta matsuyama on 2022/06/29.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource {
    
    @IBOutlet weak var bitcoinLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        currencyPicker.dataSource = self
        
    }

    
//MARK: - UIPickerViewDataSource
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currencyArray.count
    }


}

