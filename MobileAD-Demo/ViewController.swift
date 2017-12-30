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

    @IBOutlet weak var tableView: UITableView!
    
    var dataArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataArray = ["Show interstitial AD"]
        
        let testDemo = TestDemo()
        testDemo.doSome()
        testDemo.doTest()
        
        let demoTest = DemoTest()
        demoTest.doDemo()
        demoTest.dohaha()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    func showInterstitialAD() {
        let interstatial = MADInterstitial()
        interstatial.showInterstitialAD()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = dataArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            showInterstitialAD()
        }
    }
}

