//
//  ViewController.swift
//  HMUtility
//
//  Created by hushain1990 on 03/07/2024.
//  Copyright (c) 2024 hushain1990. All rights reserved.
//

import UIKit
import HMUtility

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("\(Utility.isValidEmail("hushain1990@gmail.com"))")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

