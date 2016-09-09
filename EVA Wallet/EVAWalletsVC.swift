//
//  ViewController.swift
//  EVA Wallet
//
//  Created by Charlie Morris on 08/08/2016.
//  Copyright © 2016 Flailing Whale. All rights reserved.
//

import UIKit

class WalletsVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //override func prefersStatusBarHidden() -> Bool {
    //  return true
    //}


}
