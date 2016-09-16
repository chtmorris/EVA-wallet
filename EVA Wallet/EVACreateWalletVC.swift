//
//  EVACreateWalletVC.swift
//  EVA Wallet
//
//  Created by Charlie Morris on 9/13/16.
//  Copyright © 2016 Flailing Whale. All rights reserved.
//

import UIKit

class EVACreateWalletVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    
    // =========
    // LIFECYCLE
    // =========
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        textField.becomeFirstResponder()
    }

    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        createNewWallet(walletName: textField.text!)
        
        textField.resignFirstResponder()
        dismiss(animated: true, completion: nil)
        return true
    }
    
    
    // =================
    // CREATE NEW WALLET
    // =================
    
    func createNewWallet(walletName: String) {
        
        dummyWalletNames.append(walletName)
        dummyWalletBalance.append("0.0000")
        
//        let defaults = UserDefaults.standard
//        
//        guard defaults.object(forKey: "wallets") != nil else {
//            
//            // Set wallet for the first time
//            let wallets = [Wallet(name: walletName, balance: 0.0)]
//            defaults.set(wallets, forKey: "wallets")
//            return
//        }
//        
//        // Wallets already exists
//        var wallets = defaults.object(forKey: "wallets") as! [Wallet]
//        let newWallet = Wallet(name: walletName, balance: 0.0)
//        wallets.append(newWallet)

    }
    
    // =======
    // ACTIONS
    // =======
    
    @IBAction func downArrowTapped(_ sender: UIButton) {
        textField.resignFirstResponder()
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createButtonTapped(_ sender: UIButton) {
        
        guard textField.text != nil else {
            return
        }
        
        createNewWallet(walletName: textField.text!)
        dismiss(animated: true, completion: nil)
    }
}
