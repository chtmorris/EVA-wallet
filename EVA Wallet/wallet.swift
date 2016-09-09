//
//  wallet.swift
//  EVA Wallet
//
//  Created by Charlie Morris on 2016-09-08.
//  Copyright © 2016 Flailing Whale. All rights reserved.
//

import Foundation
import UIKit

struct Wallet {
    var name: String
    var balance: Double
    
    init(name: String, balance: Double) {
        self.name = name
        self.balance = balance
    }
    
    mutating func addFunds(addAmount: Double) {
        guard addAmount > 0 else {
            print("Must add more than 0.0 ETH")
            return
        }
        self.balance = balance + addAmount
    }
    
    mutating func subtractFunds(subtractAmount: Double) {
        guard subtractAmount > 0 else {
            print("Must subtract more than 0.0 ETH")
            return
        }
        
        guard subtractAmount < self.balance else {
            print("Cannot subtract more than value of wallet")
            return
        }
        
        self.balance = balance - subtractAmount
    }
}
