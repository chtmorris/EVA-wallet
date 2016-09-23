//
//  EVARecieveEtherVC.swift
//  EVA Wallet
//
//  Created by Charlie Morris on 9/16/16.
//  Copyright © 2016 Flailing Whale. All rights reserved.
//

import UIKit

class EVARecieveEtherVC: UIViewController {
    
    // =========
    // LIFECYCLE 
    // =========
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    @IBAction func downButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
