//
//  main.swift
//  MuBank
//
//  Created by Rovane Moura on 12/03/19.
//  Copyright © 2019 MuBank. All rights reserved.
//

import Foundation

func startScreen() {
    
    upperMenu()
    
    print("===================================================")
    print("||   Welcome to your MuBank, John Appleseed 👋   ||")
    print("|| ############################################# ||")
    print("|| Invoice: \(myUser.currentInvoice) - Funds: \(myUser.funds) - Points: \(myUser.points) ||")
    print("===================================================")
    print("||                                               ||")
    print("||     Type the number of the desired action     ||")
    print("||                                               ||")
    print("|| (1) * [Deposit]                               ||")
    print("|| (2) * [Transfer]                              ||")
    print("|| (3) * [Adjust credit limit]                   ||")
    print("|| (4) * [Pay]                                   ||")
    print("||                                               ||")
    print("===================================================")
    
    let response = Int(readLine() ?? "-1")
    
    adjustLimit()
    switch(response) {
        
    case 1:
        print("You chose: Deposit")
        deposit()
        
    case 2:
        print("You chose: Transfer")
        transfer()
        
    case 3:
        print("You chose: Adjust card limit")
        adjustLimit()
        
    case 4:
        print("You chose: Pay")
        pay()
        
    default:
        print("404")
        
    }

}

while(true) { startScreen() }


