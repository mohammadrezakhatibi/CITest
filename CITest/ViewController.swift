//
//  ViewController.swift
//  CITest
//
//  Created by MohammadReza on 9/5/20.
//  Copyright © 2020 MohammadReza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let converter = Converter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print(converter.converter(name: "lion"))
        print(converter.converter(name: "doggo"))
    }


}

