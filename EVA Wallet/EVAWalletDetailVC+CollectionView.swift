//
//  EVAWalletDetailVC+CollectionView.swift
//  EVA Wallet
//
//  Created by Charlie Morris on 9/16/16.
//  Copyright © 2016 Flailing Whale. All rights reserved.
//

import UIKit

let dummyTransactionDirection = ["In", "Out", "In"]
let dummyTransactionAmount = [12.2345, 0.2345, 1.0394]
let dummyDate = ["12 August 2016", "26 July 2016", "20  July 2016"]

extension EVAWalletDetailVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TransactionCell", for: indexPath) as? EVAWalletDetailCollectionViewCell
        
        cell?.configure(
            transactionDirection: dummyTransactionDirection[indexPath.row],
            transactionAmount: dummyTransactionAmount[indexPath.row],
            date: dummyDate[indexPath.row]
        )
        
        return cell!
    }
}
