//
//  EVAWalletsCollectionViewCell.swift
//  EVA Wallet
//
//  Created by Charlie Morris on 08/08/2016.
//  Copyright © 2016 Flailing Whale. All rights reserved.
//

import UIKit

class EVAWalletsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var walletName: UILabel!
    @IBOutlet weak var walletBalance: UILabel!
    
    func configure(walletName:String, walletBalance:String){
        self.walletName.text = walletName
        self.walletBalance.text = walletBalance
    }
    
}
