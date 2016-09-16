//
//  EVAWalletDetailCollectionViewCell.swift
//  EVA Wallet
//
//  Created by Charlie Morris on 9/16/16.
//  Copyright © 2016 Flailing Whale. All rights reserved.
//

import UIKit

class EVAWalletDetailCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var inOutLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    func configure(transactionDirection: String, transactionAmount: Double, date: String){
        self.inOutLabel.text = transactionDirection
        self.amountLabel.text = "\(transactionAmount)"
        self.dateLabel.text = date
        
        if self.inOutLabel.text == "Out" {
            self.inOutLabel.textColor = UIColor(red: 135/255, green: 62/255, blue: 62/255, alpha: 1)
        } else {
            self.inOutLabel.textColor = UIColor(red: 47/255, green: 215/255, blue: 152/255, alpha: 1)
        }
    }
    
}
