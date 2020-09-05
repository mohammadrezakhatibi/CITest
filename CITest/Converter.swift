//
//  Converter.swift
//  CITest
//
//  Created by MohammadReza on 9/5/20.
//  Copyright © 2020 MohammadReza. All rights reserved.
//

import Foundation

class Converter {
    
    func converter(name: String) -> String {
        
        let numberSymbols: [(name: String, symbol: String)] =
          [("doggo", "🐶"),
           ("cat", "😼"),
           ("horse", "🐴"),
           ("monkey","🐵"),
            ("fox", "🦊"),
            ("ping", "🐷"),
            ("frog", "🐸"),
            ("lion", "🦁"),
            ("bear", "🐻")]
        
        
        
        return numberSymbols.first{ $0.name == name }?.symbol ?? ""
    }
    
}
