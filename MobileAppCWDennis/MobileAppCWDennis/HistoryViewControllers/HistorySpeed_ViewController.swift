//
//  HistorySpeed_ViewController.swift
//  MobileAppCWDennis
//
//  Created by Dennis Roffetov on 14/03/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class HistorySpeed_ViewController: UIViewController {
    @IBOutlet weak var HistoryTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        LoadSpeedHistory()
    }
    
    private func LoadSpeedHistory() -> Void{
        var speedHistoryArray = UserDefaults.standard.array(forKey: "sh") as! [String]
        
        speedHistoryArray.reverse()
        
        for stringItem in speedHistoryArray.prefix(5) {
            HistoryTextView.text = HistoryTextView.text + stringItem + "\n"
        }
        speedHistoryArray.reverse()
        UserDefaults.standard.set(speedHistoryArray, forKey: "sh")
    }
    
    @IBAction func btnBack_Touched(_ sender: Any) {
        performSegue(withIdentifier: "OpenSpeedPage", sender: self)
    }
    

}
