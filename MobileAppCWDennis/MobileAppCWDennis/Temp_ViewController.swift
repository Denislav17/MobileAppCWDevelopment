//
//  Temp_ViewController.swift
//  MobileAppCWDennis
//
//  Created by Dennis Roffetov on 13/03/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class Temp_ViewController: UIViewController {

    //text fields initialization

    //end of text fields initialization
    @IBOutlet weak var Keyboard: UIView!
    
    
    @IBOutlet weak var txtCelsius: UITextField!
    @IBOutlet weak var txtFahrenheit: UITextField!
    @IBOutlet weak var txtKelvin: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Keyboard.isHidden = true
        
        txtCelsius.isSelected = false
        txtFahrenheit.isSelected = false
        txtKelvin.isSelected = false

        // Do any additional setup after loading the view.
    }
    
    @IBAction func txtCelsius_Selected(_ sender: Any) {
        txtCelsius.isSelected = true
        txtCelsius.backgroundColor = UIColor.lightGray
        txtCelsius.textColor = UIColor.white
        Keyboard.isHidden = false
        
        //Selected
        txtFahrenheit.isSelected = false
        txtKelvin.isSelected = false
        //Ui Prop
        txtFahrenheit.backgroundColor = UIColor.white
        txtKelvin.backgroundColor = UIColor.white
        txtFahrenheit.textColor = UIColor.black
        txtKelvin.textColor = UIColor.black
        //Text
        txtCelsius.text = ""
        txtFahrenheit.text = "0"
        txtKelvin.text = "0"
    }
    
    @IBAction func txtFahrenheit_Selected(_ sender: Any) {
        txtFahrenheit.isSelected = true
        txtFahrenheit.backgroundColor = UIColor.lightGray
        txtFahrenheit.textColor = UIColor.white
        Keyboard.isHidden = false
        
        //Selected
        txtCelsius.isSelected = false
        txtKelvin.isSelected = false
        //Ui Prop
        txtCelsius.backgroundColor = UIColor.white
        txtKelvin.backgroundColor = UIColor.white
        txtCelsius.textColor = UIColor.black
        txtKelvin.textColor = UIColor.black
        //Text
        txtCelsius.text = "0"
        txtFahrenheit.text = ""
        txtKelvin.text = "0"
    }
    
    
    @IBAction func txtKelvin_Selected(_ sender: Any) {
        txtKelvin.isSelected = true
        txtKelvin.backgroundColor = UIColor.lightGray
        txtKelvin.textColor = UIColor.white
        Keyboard.isHidden = false
        
        //Selected
        txtCelsius.isSelected = false
        txtFahrenheit.isSelected = false
        //Ui Prop
        txtCelsius.backgroundColor = UIColor.white
        txtFahrenheit.backgroundColor = UIColor.white
        txtCelsius.textColor = UIColor.black
        txtFahrenheit.textColor = UIColor.black
        //Text
        txtCelsius.text = "0"
        txtFahrenheit.text = "0"
        txtKelvin.text = ""
    }
    
    
    
    //Extra buttons init
    @IBAction func btnBack_Touched(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "Id2_HomePage", sender: self)
    }
    

}
