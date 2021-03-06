//
//  HistoryWeight_ViewController.swift
//  MobileAppCWDennis
//
//  Created by Dennis Roffetov on 14/03/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class HistoryWeight_ViewController: UIViewController {
    @IBOutlet weak var txtViewTest: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LoadWeightHistory()

        // Do any additional setup after loading the view.
    }
    private func LoadWeightHistory() -> Void
    {
        var weightHistoryArray = UserDefaults.standard.array(forKey: "wh") as! [String]

        weightHistoryArray.reverse()

        for stringItem in weightHistoryArray.prefix(5) {
            txtViewTest.text = txtViewTest.text + stringItem + "\n"
        }
        weightHistoryArray.reverse()
        UserDefaults.standard.set(weightHistoryArray, forKey: "wh")
    }
    @IBAction func btnBack_Touched(_ sender: Any) {
        performSegue(withIdentifier: "OpenWeightPage", sender: self)
    }
    
}
