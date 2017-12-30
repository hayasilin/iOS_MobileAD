//
//  ViewController.swift
//  MobileAD-Demo
//
//  Created by Kuan-Wei Lin on 12/30/17.
//  Copyright © 2017 cracktheterm. All rights reserved.
//

import UIKit
import MobileAD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testDemo = TestDemo()
        testDemo.doSome()
        testDemo.doTest()
        
        let demoTest = DemoTest()
        demoTest.doDemo()
        demoTest.dohaha()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

