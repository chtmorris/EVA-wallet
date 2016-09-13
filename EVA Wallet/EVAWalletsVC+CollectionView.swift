//
//  EVAWalletsVC+CollectionView.swift
//  EVA Wallet
//
//  Created by Charlie Morris on 08/08/2016.
//  Copyright © 2016 Flailing Whale. All rights reserved.
//

import UIKit

extension EVAWalletsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WalletCell", for: indexPath) as? EVAWalletsCollectionViewCell
        
        cell?.configure(
            walletName: "Wallet",
            walletBalance: "12.123 "
        )
        
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let cell = collectionView.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? EVAWalletDetailVC {
            
            let cell = sender as! UICollectionViewCell
            let indexPath = self.collectionView!.indexPath(for: cell)
            
            vc.walletFromCollectionView = "\(indexPath?.row)"

        }
    }
    
}
