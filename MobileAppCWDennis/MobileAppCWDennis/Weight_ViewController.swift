//
//  Weight_ViewController.swift
//  MobileAppCWDennis
//
//  Created by Denislav Rofetov on 12/03/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class Weight_ViewController: UIViewController {

    @IBOutlet weak var btnBack: UIBarButtonItem!
    @IBOutlet weak var Keyboard: UIView!
    @IBOutlet weak var lblWelcome: UILabel!
    //text boxes
    @IBOutlet weak var txtKg: UITextField!
    @IBOutlet weak var txtGrams: UITextField!
    @IBOutlet weak var txtOunces: UITextField!
    @IBOutlet weak var txtPounds: UITextField!
    @IBOutlet weak var txtStone: UITextField!
    @IBOutlet weak var txtPound: UITextField!
    //end of text boxes
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Keyboard.isHidden = true
        
        txtKg.isSelected = false
        txtGrams.isSelected = false
        txtOunces.isSelected = false
        txtPounds.isSelected = false
//        txtStone.isSelected = false
//        txtPound.isSelected = false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Text Fields Selection
    @IBAction func txtKg_Selected(_ sender: UITextField) {
        txtKg.isSelected = true
        txtKg.backgroundColor = UIColor.lightGray
        txtKg.textColor = UIColor.white
        Keyboard.isHidden = false
        
        txtGrams.isSelected = false
        txtOunces.isSelected = false
        txtPounds.isSelected = false
        
        txtGrams.backgroundColor = UIColor.white
        txtGrams.textColor = UIColor.black
        
        txtOunces.backgroundColor = UIColor.white
        txtOunces.textColor = UIColor.black
        
        txtPounds.backgroundColor = UIColor.white
        txtPounds.textColor = UIColor.black
    }
    
    @IBAction func txtGrams_Selected(_ sender: UITextField) {
        txtGrams.isSelected = true
        txtGrams.backgroundColor = UIColor.lightGray
        txtGrams.textColor = UIColor.white
        Keyboard.isHidden = false
        
        txtKg.isSelected = false
        txtOunces.isSelected = false
        txtPounds.isSelected = false
        
        txtKg.backgroundColor = UIColor.white
        txtKg.textColor = UIColor.black
        
        txtOunces.backgroundColor = UIColor.white
        txtOunces.textColor = UIColor.black
        
        txtPounds.backgroundColor = UIColor.white
        txtPounds.textColor = UIColor.black
    }
    
    @IBAction func txtOunces_Selected(_ sender: UITextField) {
        txtOunces.isSelected = true
        txtOunces.backgroundColor = UIColor.lightGray
        txtOunces.textColor = UIColor.white
        Keyboard.isHidden = false
        
        txtGrams.isSelected = false
        txtKg.isSelected = false
        txtPounds.isSelected = false
        
        txtKg.backgroundColor = UIColor.white
        txtKg.textColor = UIColor.black
        
        txtGrams.backgroundColor = UIColor.white
        txtGrams.textColor = UIColor.black
        
        txtPounds.backgroundColor = UIColor.white
        txtPounds.textColor = UIColor.black
    }
    
    @IBAction func txtPounds_Selected(_ sender: UITextField) {
        txtPounds.isSelected = true
        txtPounds.backgroundColor = UIColor.lightGray
        txtPounds.textColor = UIColor.white
        Keyboard.isHidden = false
        
        txtGrams.isSelected = false
        txtKg.isSelected = false
        txtOunces.isSelected = false
        
        txtKg.backgroundColor = UIColor.white
        txtKg.textColor = UIColor.black
        
        txtGrams.backgroundColor = UIColor.white
        txtGrams.textColor = UIColor.black
        
        txtOunces.backgroundColor = UIColor.white
        txtOunces.textColor = UIColor.black
    }
    //Text Fields Selection
    
    
    
    
    //Calculations and Conversions
    func KilogramsSelected(_ kg: Double) -> Void {
        txtGrams.text = String(format:"%.5f", kg*1000)
        txtOunces.text = String(format:"%.5f", kg*35.274)
        txtPounds.text = String(format:"%.5f", kg*2.205)
    }
    func GramsSelected(_ grams:Double) -> Void {
        txtKg.text = String(format:"%.5f", grams/1000)
        txtOunces.text = String(format:"%.5f", grams/28.35)
        txtPounds.text = String(format:"%.5f", grams/453.592)
    }
    func OuncesSelected(_ ounces: Double) -> Void {
        txtKg.text = String(format:"%.5f", ounces/35.274)
        txtGrams.text = String(format:"%.5f", ounces*28.35)
        txtPounds.text = String(format:"%.5f", ounces/16)
    }
    func PoundsSelected(_ pounds: Double) -> Void{
        txtKg.text = String(format:"%.5f", pounds/2.205)
        txtGrams.text = String(format:"%.5f", pounds*453.592)
        txtOunces.text = String(format:"%.5f", pounds*16)
    }
    //End of Calcs and Convs
    //Buttons Area Func
    @IBAction func btnBack_Clicked(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "Id1_HomePage", sender:self)
    }
    //End of Button Area Func
    
    
    //Keyboard Func
    @IBAction func keyboardButton1_Tapped(_ sender: UIButton) {
        switch (sender.titleLabel?.text) {
        case "1":
            if(txtKg.isSelected)
            {
                txtKg.text = txtKg.text! + "1"
                KilogramsSelected(Double(txtKg.text!)!)
            }
            if (txtGrams.isSelected) {
                txtGrams.text = txtGrams.text! + "1"
                GramsSelected(Double(txtGrams.text!)!)
            }
            if (txtOunces.isSelected){
                txtOunces.text = txtOunces.text! + "1"
                OuncesSelected(Double(txtOunces.text!)!)
            }
            if(txtPounds.isSelected)
            {
                txtPounds.text = txtPounds.text! + "1"
                PoundsSelected(Double(txtPounds.text!)!)
            }
            
        default:
            break;
        }
    }
    
    @IBAction func btnClear_Tapped(_ sender: UIButton) {
        
        Keyboard.isHidden = true
        
        txtKg.text = ""
        txtGrams.text = ""
        txtOunces.text = ""
        txtPounds.text = ""
        
        txtKg.isSelected = false
        txtGrams.isSelected = false
        txtOunces.isSelected = false
        txtPounds.isSelected = false

    }
    
    //End of Keyboard Func
    
}
