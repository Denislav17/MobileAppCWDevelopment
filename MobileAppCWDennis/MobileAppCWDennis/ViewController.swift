//
//  ViewController.swift
//  MobileAppCWDennis
//
//  Created by Denislav Rofetov on 12/03/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnWeight_Clicked(_ sender: UIButton) {
        performSegue(withIdentifier: "Id_WeightPage", sender:self)
    }
    @IBAction func btnTemp_Clicked(_ sender: UIButton) {
        performSegue(withIdentifier: "Id_TempPage", sender: self)
    }
    @IBAction func btnSpeed_Clicked(_ sender: UIButton) {
        performSegue(withIdentifier: "Id_SpeedPage", sender: self)
    }
    @IBAction func btnLength_Clicked(_ sender: UIButton) {
        performSegue(withIdentifier: "Id_LengthPage", sender: self)
    }
    @IBAction func btnVolume_Clicked(_ sender: UIButton) {
         performSegue(withIdentifier: "Id_VolumePage", sender: self)
    }
    @IBAction func btnConstant_Clicked(_ sender: Any) {
        performSegue(withIdentifier: "Id_ConstantsPage", sender: self)
    }
    
    
    
}

