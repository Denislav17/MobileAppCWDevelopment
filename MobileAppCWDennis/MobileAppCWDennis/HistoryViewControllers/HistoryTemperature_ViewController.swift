//
//  HistoryTemperature_ViewController.swift
//  MobileAppCWDennis
//
//  Created by Dennis Roffetov on 14/03/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class HistoryTemperature_ViewController: UIViewController {
    @IBOutlet weak var HistoryTextVIew: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        LoadTempHistory()
    }

    private func LoadTempHistory() ->Void
    {
        var tempHistoryArray = UserDefaults.standard.array(forKey: "th") as! [String]
        
        tempHistoryArray.reverse()
        
        for stringItem in tempHistoryArray.prefix(5) {
            HistoryTextVIew.text = HistoryTextVIew.text + stringItem + "\n"
        }
        tempHistoryArray.reverse()
        UserDefaults.standard.set(tempHistoryArray, forKey: "th")
    }
    
    @IBAction func btnBack_Touched(_ sender: Any) {
        performSegue(withIdentifier: "OpenTempPage", sender: self)
    }
    
}
