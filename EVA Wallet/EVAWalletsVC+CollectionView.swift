//
//  EVAWalletsVC+CollectionView.swift
//  EVA Wallet
//
//  Created by Charlie Morris on 08/08/2016.
//  Copyright © 2016 Flailing Whale. All rights reserved.
//

import UIKit

var dummyWalletNames = ["Chuck 1", "Spending", "Chuck's Secret"]
var dummyWalletBalance = ["12.1328", "134.1222", "111.0090"]

extension EVAWalletsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    // =======================
    // COLLECTION VIEW METHODS
    // =======================
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dummyWalletNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WalletCell", for: indexPath) as? EVAWalletsCollectionViewCell
        
        cell?.configure(
            walletName: dummyWalletNames[indexPath.row],
            walletBalance: dummyWalletBalance[indexPath.row]
        )
        
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 50)
    }
    
    
    // =================
    // PREPARE FOR SEGUE
    // =================
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? EVAWalletDetailVC {
            let cell = sender as! EVAWalletsCollectionViewCell
            vc.walletFromCollectionView = Wallet(name: cell.walletName.text!, balance: Double(cell.walletBalance.text!)!)
        }
    }
    
}
