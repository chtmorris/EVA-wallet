//
//  EVAWalletDetailVC.swift
//  EVA Wallet
//
//  Created by Charlie Morris on 9/12/16.
//  Copyright © 2016 Flailing Whale. All rights reserved.
//

import UIKit

class EVAWalletDetailVC: UIViewController {
    
    var walletFromCollectionView: Wallet!
    
    @IBOutlet weak var walletTitle: UILabel!
    @IBOutlet weak var walletAmount: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    // =========
    // LIFECYCLE
    // =========
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        walletTitle.text = walletFromCollectionView.name
        walletAmount.text = "\(walletFromCollectionView.balance)"

        // Do any additional setup after loading the view.
    }

    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
    
    
    // =======
    // ACTIONS
    // =======
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}

