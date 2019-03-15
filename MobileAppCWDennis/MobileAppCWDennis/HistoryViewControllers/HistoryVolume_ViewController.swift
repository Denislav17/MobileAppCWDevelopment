//
//  HistoryVolume_ViewController.swift
//  MobileAppCWDennis
//
//  Created by Dennis Roffetov on 15/03/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class HistoryVolume_ViewController: UIViewController {
    @IBOutlet weak var HistoryTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        LoadVolumeHistory()
    }
    
    private func LoadVolumeHistory() -> Void{
        var volumeHistoryArray = UserDefaults.standard.array(forKey: "vh") as! [String]
        
        volumeHistoryArray.reverse()
        
        for stringItem in volumeHistoryArray.prefix(5) {
            HistoryTextView.text = HistoryTextView.text + stringItem + "\n"
        }
        volumeHistoryArray.reverse()
        UserDefaults.standard.set(volumeHistoryArray, forKey: "vh")
    }
    @IBAction func btnBack_Touched(_ sender: Any) {
        performSegue(withIdentifier: "OpenVolumePage", sender: self)
    }
    

}
