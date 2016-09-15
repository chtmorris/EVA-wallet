//
//  ViewController.swift
//  EVA Wallet
//
//  Created by Charlie Morris on 08/08/2016.
//  Copyright © 2016 Flailing Whale. All rights reserved.
//

import UIKit

class EVAWalletsVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let defaults = UserDefaults.standard
        
        guard defaults.object(forKey: "wallets") != nil else {
            return
        }
        let wallets = defaults.object(forKey: "wallets") as! [Wallet]
        print(wallets)
    }
    
    
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }  
    }
    
    
    
}
