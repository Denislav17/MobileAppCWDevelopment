//
//  Speed_ViewController.swift
//  MobileAppCWDennis
//
//  Created by Dennis Roffetov on 13/03/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class Speed_ViewController: UIViewController {

    @IBOutlet weak var txtMetres: UITextField!
    @IBOutlet weak var txtKm: UITextField!
    @IBOutlet weak var txtMiles: UITextField!
    @IBOutlet weak var txtNautical: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtMetres.isSelected = false
        txtKm.isSelected = false
        txtMiles.isSelected = false
        txtNautical.isSelected = false
        
        //Keyboard.isHidden = true

    }
    //Calc
    func MetresSelected(_ metre:Double) -> Void{
        txtKm.text = String(format:"%.2f", metre*3.6)
        txtMiles.text = String(format:"%.2f", 	metre*2.237)
        txtNautical.text = String(format:"%.2f", (metre*3.6)/1.852)
    }
    func KilometersSelected(_ km:Double) -> Void{
        txtMetres.text = String(format:"%.2f", km/3.6)
        txtMiles.text = String(format:"%.2f", km/1.609)
        txtNautical.text = String(format:"%.2f", km/1.852)
    }
    func MilesSelected(_ mile: Double) -> Void{
        txtMetres.text = String(format:"%.2f", mile/2.237)
        txtKm.text = String(format:"%.2f", mile*1.609)
        txtNautical.text = String(format:"%.2f", (mile*1.609)/1.852)
    }
    func NauticalSelected(_ nautical: Double) -> Void{
        txtMetres.text = String(format:"%.2f", (nautical*1.852)/3.6)
        txtKm.text = String(format:"%.2f", nautical*1.852)
        txtMiles.text = String(format:"%.2f", (nautical*1.852)/1.609)
    }
    //End of Calc
    
    //Extra buttons
    @IBAction func btnBack_Tapped(_ sender: Any) {
        performSegue(withIdentifier: "Id3_HomePage", sender: self)
    }
    

}
