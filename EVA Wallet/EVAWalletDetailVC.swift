//
//  EVAWalletDetailVC.swift
//  EVA Wallet
//
//  Created by Charlie Morris on 9/12/16.
//  Copyright © 2016 Flailing Whale. All rights reserved.
//

import UIKit

class EVAWalletDetailVC: UIViewController {
    
    var walletFromCollectionView: String!

    @IBOutlet weak var walletTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        walletTitle.text = walletFromCollectionView

        // Do any additional setup after loading the view.
    }

    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }

    @IBAction func backButtonTapped(_ sender: UIButton) {
//        let unwindedSegue = UIStoryboardSegue(identifier: "toDetailWallet", source: EVAWalletsVC as! UIViewController, destination: EVAWalletDetailVC)
//        unwind(for: "toWalletDetail", towardsViewController: EVAWalletsVC)
    }
    
    
}
