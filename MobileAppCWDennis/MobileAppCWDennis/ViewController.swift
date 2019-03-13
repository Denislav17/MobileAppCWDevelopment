//
//  ViewController.swift
//  MobileAppCWDennis
//
//  Created by Denislav Rofetov on 12/03/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnWeight: UIBarButtonItem!
    @IBOutlet weak var btnTemp: UIBarButtonItem!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnWeight_Clicked(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "Id_WeightPage", sender:self)
    }
    @IBAction func btnTemp_Clicked(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "Id_TempPage", sender: self)
    }
    
}

