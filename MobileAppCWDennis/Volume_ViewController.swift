//
//  Volume_ViewController.swift
//  MobileAppCWDennis
//
//  Created by Dennis Roffetov on 13/03/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class Volume_ViewController: UIViewController {

    
    //Textfields init()
    @IBOutlet weak var txtGallon: UITextField!
    @IBOutlet weak var txtLitre: UITextField!
    @IBOutlet weak var txtPint: UITextField!
    @IBOutlet weak var txtFluidOunce: UITextField!
    @IBOutlet weak var txtMl: UITextField!
    
    //end of textfields init()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        txtGallon.isSelected = false
        txtLitre.isSelected = false
        txtPint.isSelected = false
        txtFluidOunce.isSelected = false
        txtMl.isSelected = false
        
        //Keyboard.isHidden = true
    }
    
    //Selected Section
    @IBAction func txtGallon_Selected(_ sender: Any) {
        txtGallon.isSelected = true
        txtGallon.backgroundColor = UIColor.lightGray
        txtGallon.textColor = UIColor.white
        //Keyboard.isHidden = false
        
        //Selected
        txtLitre.isSelected = false
        txtPint.isSelected = false
        txtFluidOunce.isSelected = false
        txtMl.isSelected = false
        //Ui
        txtLitre.backgroundColor = UIColor.white
        txtPint.backgroundColor = UIColor.white
        txtFluidOunce.backgroundColor = UIColor.white
        txtMl.backgroundColor = UIColor.white
        txtLitre.textColor = UIColor.black
        txtPint.textColor = UIColor.black
        txtFluidOunce.textColor = UIColor.black
        txtMl.textColor = UIColor.black
        //Text
        txtGallon.text = ""
        txtLitre.text = "0"
        txtPint.text = "0"
        txtFluidOunce.text = "0"
        txtMl.text = "0"
    }
    @IBAction func txtLitre_Selected(_ sender: Any) {
        txtLitre.isSelected = true
        txtLitre.backgroundColor = UIColor.lightGray
        txtLitre.textColor = UIColor.white
        //Keyboard.isHidden = false
        
        //Selected
        txtGallon.isSelected = false
        txtPint.isSelected = false
        txtFluidOunce.isSelected = false
        txtMl.isSelected = false
        //Ui
        txtGallon.backgroundColor = UIColor.white
        txtPint.backgroundColor = UIColor.white
        txtFluidOunce.backgroundColor = UIColor.white
        txtMl.backgroundColor = UIColor.white
        txtGallon.textColor = UIColor.black
        txtPint.textColor = UIColor.black
        txtFluidOunce.textColor = UIColor.black
        txtMl.textColor = UIColor.black
        //Text
        txtGallon.text = "0"
        txtLitre.text = ""
        txtPint.text = "0"
        txtFluidOunce.text = "0"
        txtMl.text = "0"
    }
    @IBAction func txtPint_Selected(_ sender: Any) {
        txtPint.isSelected = true
        txtPint.backgroundColor = UIColor.lightGray
        txtPint.textColor = UIColor.white
        //Keyboard.isHidden = false
        
        //Selected
        txtGallon.isSelected = false
        txtLitre.isSelected = false
        txtFluidOunce.isSelected = false
        txtMl.isSelected = false
        //Ui
        txtGallon.backgroundColor = UIColor.white
        txtLitre.backgroundColor = UIColor.white
        txtFluidOunce.backgroundColor = UIColor.white
        txtMl.backgroundColor = UIColor.white
        txtGallon.textColor = UIColor.black
        txtLitre.textColor = UIColor.black
        txtFluidOunce.textColor = UIColor.black
        txtMl.textColor = UIColor.black
        //Text
        txtGallon.text = "0"
        txtLitre.text = "0"
        txtPint.text = ""
        txtFluidOunce.text = "0"
        txtMl.text = "0"
    }
    @IBAction func txtFluidOunce_Selected(_ sender: Any) {
        txtFluidOunce.isSelected = true
        txtFluidOunce.backgroundColor = UIColor.lightGray
        txtFluidOunce.textColor = UIColor.white
        //Keyboard.isHidden = false
        
        //Selected
        txtGallon.isSelected = false
        txtLitre.isSelected = false
        txtPint.isSelected = false
        txtMl.isSelected = false
        //Ui
        txtGallon.backgroundColor = UIColor.white
        txtLitre.backgroundColor = UIColor.white
        txtPint.backgroundColor = UIColor.white
        txtMl.backgroundColor = UIColor.white
        txtGallon.textColor = UIColor.black
        txtLitre.textColor = UIColor.black
        txtPint.textColor = UIColor.black
        txtMl.textColor = UIColor.black
        //Text
        txtGallon.text = "0"
        txtLitre.text = "0"
        txtPint.text = "0"
        txtFluidOunce.text = ""
        txtMl.text = "0"
    }
    @IBAction func txtMl_Selected(_ sender: Any) {
        txtMl.isSelected = true
        txtMl.backgroundColor = UIColor.lightGray
        txtMl.textColor = UIColor.white
       // //Keyboard.isHidden = false
        
        //Selected
        txtGallon.isSelected = false
        txtLitre.isSelected = false
        txtPint.isSelected = false
        txtFluidOunce.isSelected = false
        //Ui BackColor
        txtGallon.backgroundColor = UIColor.white
        txtLitre.backgroundColor = UIColor.white
        txtPint.backgroundColor = UIColor.white
        txtFluidOunce.backgroundColor = UIColor.white
        //Ui TextColor
        txtGallon.textColor = UIColor.black
        txtLitre.textColor = UIColor.black
        txtPint.textColor = UIColor.black
        txtFluidOunce.textColor = UIColor.black
        //Text
        txtGallon.text = "0"
        txtLitre.text = "0"
        txtPint.text = "0"
        txtFluidOunce.text = "0"
        txtMl.text = ""
    }
    //End of Selected Section
    
    //Calc Section
    func GallonSelected(_ gallon:Double) -> Void{
        txtLitre.text = String(format:"%.2f", gallon*4.546)
        txtPint.text = String(format:"%.2f", gallon*8)
        txtFluidOunce.text = String(format:"%.2f", gallon*160)
        txtMl.text = String(format:"%.2f", gallon*4546.09)
    }
    func LitreSelected(_ litre:Double) -> Void{
        txtGallon.text = String(format:"%.2f", litre/4.546)
        txtPint.text = String(format:"%.2f", litre*1.76)
        txtFluidOunce.text = String(format:"%.2f", litre*35.195)
        txtMl.text = String(format:"%.2f", litre*1000)
    }
    func PintSelected(_ pint: Double) -> Void{
        txtGallon.text = String(format:"%.2f", pint/8)
        txtLitre.text = String(format:"%.2f", pint/1.76)
        txtFluidOunce.text = String(format:"%.2f", pint*20)
        txtMl.text = String(format:"%.2f", pint*568.261)
    }
    func FluidOunceSelected(_ ounce: Double) -> Void{
        txtGallon.text = String(format:"%.2f", ounce/160)
        txtLitre.text = String(format:"%.2f", ounce/35.195)
        txtPint.text = String(format:"%.2f", ounce/20)
        txtMl.text = String(format:"%.2f", ounce*28.413)
    }
    func MlSelected(_ ml: Double) -> Void{
        txtGallon.text = String(format:"%.2f", ml/4546.09)
        txtLitre.text = String(format:"%.2f", ml/1000)
        txtPint.text = String(format:"%.2f", ml/568.261)
        txtMl.text = String(format:"%.2f", ml/28.413)
    }
    //End of Calc section
    
    
    //Extra buttons
    @IBAction func btnBack_Touched(_ sender: Any) {
        performSegue(withIdentifier: "Id5_HomePage", sender: self)
    }
    

}
