//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


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



var wallet1 = Wallet(name: "Chuck's", balance: 0.0)

wallet1.addFunds(addAmount: 2.1)
wallet1.addFunds(addAmount: 2.1)
print(wallet1.balance)

wallet1.subtractFunds(subtractAmount: 1.1)
print(wallet1.balance)