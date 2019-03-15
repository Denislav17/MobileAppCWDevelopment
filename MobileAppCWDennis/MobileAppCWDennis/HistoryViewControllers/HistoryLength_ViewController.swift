//
//  HistoryLength_ViewController.swift
//  MobileAppCWDennis
//
//  Created by Dennis Roffetov on 15/03/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class HistoryLength_ViewController: UIViewController {
    @IBOutlet weak var HistoryTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LoadLengthHistory()

    }
    private func LoadLengthHistory() -> Void{
        var lengthHistoryArray = UserDefaults.standard.array(forKey: "lh") as! [String]
        
        lengthHistoryArray.reverse()
        
        for stringItem in lengthHistoryArray.prefix(5) {
            HistoryTextView.text = HistoryTextView.text + stringItem + "\n"
        }
        lengthHistoryArray.reverse()
        UserDefaults.standard.set(lengthHistoryArray, forKey: "lh")
    }
    @IBAction func btnBack_Touched(_ sender: Any) {
        performSegue(withIdentifier: "OpenLengthPage", sender: self)
    }
    
}
