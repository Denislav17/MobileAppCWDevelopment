//
//  Length_ViewController.swift
//  MobileAppCWDennis
//
//  Created by Dennis Roffetov on 13/03/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class Length_ViewController: UIViewController {
    
    
    //Textboxes init
    @IBOutlet weak var txtMetre: UITextField!
    @IBOutlet weak var txtMile: UITextField!
    @IBOutlet weak var txtCm: UITextField!
    @IBOutlet weak var txtMm: UITextField!
    @IBOutlet weak var txtYard: UITextField!
    @IBOutlet weak var txtInch: UITextField!
    
    //end of textboxes init
    override func viewDidLoad() {
        super.viewDidLoad()

        txtMetre.isSelected = false
        txtMile.isSelected = false
        txtCm.isSelected = false
        txtMm.isSelected = false
        txtYard.isSelected = false
        txtInch.isSelected = false
        
        //Keyboard.isHidden = true
    }
    //Calc section
    func MetreSelected(_ metre:Double) -> Void{
        txtMile.text = String(format:"%.2f", metre/1609.344)
        txtCm.text = String(format:"%.2f", metre*100)
        txtMm.text = String(format:"%.2f", metre*1000)
        txtYard.text = String(format:"%.2f", metre*1.094)
        txtInch.text = String(format:"%.2f", metre*39.3701)
    }
    func MileSelected(_ mile:Double) -> Void{
        txtMetre.text = String(format:"%.2f", mile*1609.344)
        txtCm.text = String(format:"%.2f", mile*160934.4)
        txtMm.text = String(format:"%.2f", mile*1609344)
        txtYard.text = String(format:"%.2f", mile*1760)
        txtInch.text = String(format:"%.2f", mile*63360)
    }
    func CmSelected(_ cm: Double) -> Void{
        txtMetre.text = String(format:"%.2f", cm/100)
        txtMile.text = String(format:"%.2f", cm*160934.4)
        txtMm.text = String(format:"%.2f", cm*10)
        txtYard.text = String(format:"%.2f", cm/91.44)
        txtInch.text = String(format:"%.2f", cm/2.54)
    }
    func MmSelected(_ mm: Double) -> Void{
        txtMetre.text = String(format:"%.2f", mm/1000)
        txtMile.text = String(format:"%.2f", (mm/1000)/1609.344)
        txtCm.text = String(format:"%.2f", mm/10)
        txtYard.text = String(format:"%.2f", mm/914.4)
        txtInch.text = String(format:"%.2f", mm/25.4)
    }
    func YardSelected(_ yard: Double) -> Void{
        txtMetre.text = String(format:"%.2f", yard/1.094)
        txtMile.text = String(format:"%.2f", yard/1760)
        txtCm.text = String(format:"%.2f", yard*91.44)
        txtMm.text = String(format:"%.2f", yard*914.4)
        txtInch.text = String(format:"%.2f", yard*36)
    }
    func InchSelected(_ inch: Double) -> Void{
        txtMetre.text = String(format:"%.2f", inch/39.3701)
        txtMile.text = String(format:"%.2f", inch/63360)
        txtCm.text = String(format:"%.2f", inch*2.54)
        txtMm.text = String(format:"%.2f", inch*25.4)
        txtYard.text = String(format:"%.2f", inch/36)
    }
    //end of calculation section

    @IBAction func btnBack_Touched(_ sender: Any) {
        performSegue(withIdentifier: "Id4_HomePage", sender: self)
    }
    
}
