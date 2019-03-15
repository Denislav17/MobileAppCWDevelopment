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
    @IBOutlet weak var lblError: UILabel!
    @IBOutlet weak var Keyboard: UIView!
    
    private var _speedHistoryArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtMetres.isSelected = false
        txtKm.isSelected = false
        txtMiles.isSelected = false
        txtNautical.isSelected = false
        
        Keyboard.isHidden = true
        
        LoadUserDefaults()
    }
    //Selected
    @IBAction func txtMetres_Selected(_ sender: Any) {
        txtMetres.isSelected = true
        txtMetres.backgroundColor = UIColor.lightGray
        txtMetres.textColor = UIColor.white
        Keyboard.isHidden = false
        
        //Selected
        txtKm.isSelected = false
        txtMiles.isSelected = false
        txtNautical.isSelected = false
        //Ui Prop
        txtKm.backgroundColor = UIColor.white
        txtMiles.backgroundColor = UIColor.white
        txtNautical.backgroundColor = UIColor.white
        txtKm.textColor = UIColor.black
        txtMiles.textColor = UIColor.black
        txtNautical.textColor = UIColor.black
        
        //Text
        txtMetres.text = ""
        txtKm.text = "0"
        txtMiles.text = "0"
        txtNautical.text = "0"
    }
    @IBAction func txtKm_Selected(_ sender: Any) {
        txtKm.isSelected = true
        txtKm.backgroundColor = UIColor.lightGray
        txtKm.textColor = UIColor.white
        Keyboard.isHidden = false
        
        //Selected
        txtMetres.isSelected = false
        txtMiles.isSelected = false
        txtNautical.isSelected = false
        //Ui Prop
        txtMetres.backgroundColor = UIColor.white
        txtMiles.backgroundColor = UIColor.white
        txtNautical.backgroundColor = UIColor.white
        txtMetres.textColor = UIColor.black
        txtMiles.textColor = UIColor.black
        txtNautical.textColor = UIColor.black
        
        //Text
        txtMetres.text = "0"
        txtKm.text = ""
        txtMiles.text = "0"
        txtNautical.text = "0"
    }
    @IBAction func txtMiles_Selected(_ sender: Any) {
        txtMiles.isSelected = true
        txtMiles.backgroundColor = UIColor.lightGray
        txtMiles.textColor = UIColor.white
        Keyboard.isHidden = false
        
        //Selected
        txtMetres.isSelected = false
        txtKm.isSelected = false
        txtNautical.isSelected = false
        //Ui Prop
        txtMetres.backgroundColor = UIColor.white
        txtKm.backgroundColor = UIColor.white
        txtNautical.backgroundColor = UIColor.white
        txtMetres.textColor = UIColor.black
        txtKm.textColor = UIColor.black
        txtNautical.textColor = UIColor.black
        //Text
        txtMetres.text = "0"
        txtKm.text = "0"
        txtMiles.text = ""
        txtNautical.text = "0"
    }
    @IBAction func txtNautical_Selected(_ sender: Any) {
        txtNautical.isSelected = true
        txtNautical.backgroundColor = UIColor.lightGray
        txtNautical.textColor = UIColor.white
        Keyboard.isHidden = false
        
        //Selected
        txtMetres.isSelected = false
        txtKm.isSelected = false
        txtMiles.isSelected = false
        //Ui Prop
        txtMetres.backgroundColor = UIColor.white
        txtKm.backgroundColor = UIColor.white
        txtMiles.backgroundColor = UIColor.white
        txtMetres.textColor = UIColor.black
        txtKm.textColor = UIColor.black
        txtMiles.textColor = UIColor.black
        //Text
        txtMetres.text = "0"
        txtKm.text = "0"
        txtMiles.text = "0"
        txtNautical.text = ""
    }   
    
    
    //End of Selected
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
    //Keyboard
    @IBAction func keyboardButton_Tapped(_ sender: UIButton) {
        switch (sender.titleLabel?.text) {
        case "1":
            // 1
            if(txtMetres.isSelected)
            {
                if(txtMetres.text == "0") {
                    txtMetres.text = "1"
                    MetresSelected(Double(txtMetres.text!)!)
                } else {
                    txtMetres.text = txtMetres.text! + "1"
                    MetresSelected(Double(txtMetres.text!)!)
                }
            }
            if (txtKm.isSelected) {
                if(txtKm.text == "0"){
                    txtKm.text = "1"
                    KilometersSelected(Double(txtKm.text!)!)
                } else {
                    txtKm.text = txtKm.text! + "1"
                    KilometersSelected(Double(txtKm.text!)!)
                }
            }
            if (txtMiles.isSelected){
                if(txtMiles.text == "0"){
                    txtMiles.text = "1"
                    MilesSelected(Double(txtMiles.text!)!)
                } else {
                    txtMiles.text = txtMiles.text! + "1"
                    MilesSelected(Double(txtMiles.text!)!)
                }
            }
            if(txtNautical.isSelected)
            {
                if(txtNautical.text == "0"){
                    txtNautical.text = "1"
                    NauticalSelected(Double(txtNautical.text!)!)
                } else {
                    txtNautical.text = txtNautical.text! + "1"
                    NauticalSelected(Double(txtNautical.text!)!)
                }
            }
        case "2":
            // 2
            if(txtMetres.isSelected)
            {
                if(txtMetres.text == "0") {
                    txtMetres.text = "2"
                    MetresSelected(Double(txtMetres.text!)!)
                } else {
                    txtMetres.text = txtMetres.text! + "2"
                    MetresSelected(Double(txtMetres.text!)!)
                }
            }
            if (txtKm.isSelected) {
                if(txtKm.text == "0"){
                    txtKm.text = "2"
                    KilometersSelected(Double(txtKm.text!)!)
                } else {
                    txtKm.text = txtKm.text! + "2"
                    KilometersSelected(Double(txtKm.text!)!)
                }
            }
            if (txtMiles.isSelected){
                if(txtMiles.text == "0"){
                    txtMiles.text = "2"
                    MilesSelected(Double(txtMiles.text!)!)
                } else {
                    txtMiles.text = txtMiles.text! + "2"
                    MilesSelected(Double(txtMiles.text!)!)
                }
            }
            if(txtNautical.isSelected)
            {
                if(txtNautical.text == "0"){
                    txtNautical.text = "2"
                    NauticalSelected(Double(txtNautical.text!)!)
                } else {
                    txtNautical.text = txtNautical.text! + "2"
                    NauticalSelected(Double(txtNautical.text!)!)
                }
            }
        case "3":
            // 3
            if(txtMetres.isSelected)
            {
                if(txtMetres.text == "0") {
                    txtMetres.text = "3"
                    MetresSelected(Double(txtMetres.text!)!)
                } else {
                    txtMetres.text = txtMetres.text! + "3"
                    MetresSelected(Double(txtMetres.text!)!)
                }
            }
            if (txtKm.isSelected) {
                if(txtKm.text == "0"){
                    txtKm.text = "3"
                    KilometersSelected(Double(txtKm.text!)!)
                } else {
                    txtKm.text = txtKm.text! + "3"
                    KilometersSelected(Double(txtKm.text!)!)
                }
            }
            if (txtMiles.isSelected){
                if(txtMiles.text == "0"){
                    txtMiles.text = "3"
                    MilesSelected(Double(txtMiles.text!)!)
                } else {
                    txtMiles.text = txtMiles.text! + "3"
                    MilesSelected(Double(txtMiles.text!)!)
                }
            }
            if(txtNautical.isSelected)
            {
                if(txtNautical.text == "0"){
                    txtNautical.text = "3"
                    NauticalSelected(Double(txtNautical.text!)!)
                } else {
                    txtNautical.text = txtNautical.text! + "3"
                    NauticalSelected(Double(txtNautical.text!)!)
                }
            }
        case "4":
            // 4
            if(txtMetres.isSelected)
            {
                if(txtMetres.text == "0") {
                    txtMetres.text = "4"
                    MetresSelected(Double(txtMetres.text!)!)
                } else {
                    txtMetres.text = txtMetres.text! + "4"
                    MetresSelected(Double(txtMetres.text!)!)
                }
            }
            if (txtKm.isSelected) {
                if(txtKm.text == "0"){
                    txtKm.text = "4"
                    KilometersSelected(Double(txtKm.text!)!)
                } else {
                    txtKm.text = txtKm.text! + "4"
                    KilometersSelected(Double(txtKm.text!)!)
                }
            }
            if (txtMiles.isSelected){
                if(txtMiles.text == "0"){
                    txtMiles.text = "4"
                    MilesSelected(Double(txtMiles.text!)!)
                } else {
                    txtMiles.text = txtMiles.text! + "4"
                    MilesSelected(Double(txtMiles.text!)!)
                }
            }
            if(txtNautical.isSelected)
            {
                if(txtNautical.text == "0"){
                    txtNautical.text = "4"
                    NauticalSelected(Double(txtNautical.text!)!)
                } else {
                    txtNautical.text = txtNautical.text! + "4"
                    NauticalSelected(Double(txtNautical.text!)!)
                }
            }
        case "5":
            // 5
            if(txtMetres.isSelected)
            {
                if(txtMetres.text == "0") {
                    txtMetres.text = "5"
                    MetresSelected(Double(txtMetres.text!)!)
                } else {
                    txtMetres.text = txtMetres.text! + "5"
                    MetresSelected(Double(txtMetres.text!)!)
                }
            }
            if (txtKm.isSelected) {
                if(txtKm.text == "0"){
                    txtKm.text = "5"
                    KilometersSelected(Double(txtKm.text!)!)
                } else {
                    txtKm.text = txtKm.text! + "5"
                    KilometersSelected(Double(txtKm.text!)!)
                }
            }
            if (txtMiles.isSelected){
                if(txtMiles.text == "0"){
                    txtMiles.text = "5"
                    MilesSelected(Double(txtMiles.text!)!)
                } else {
                    txtMiles.text = txtMiles.text! + "5"
                    MilesSelected(Double(txtMiles.text!)!)
                }
            }
            if(txtNautical.isSelected)
            {
                if(txtNautical.text == "0"){
                    txtNautical.text = "5"
                    NauticalSelected(Double(txtNautical.text!)!)
                } else {
                    txtNautical.text = txtNautical.text! + "5"
                    NauticalSelected(Double(txtNautical.text!)!)
                }
            }
        case "6":
            // 6
            if(txtMetres.isSelected)
            {
                if(txtMetres.text == "0") {
                    txtMetres.text = "6"
                    MetresSelected(Double(txtMetres.text!)!)
                } else {
                    txtMetres.text = txtMetres.text! + "6"
                    MetresSelected(Double(txtMetres.text!)!)
                }
            }
            if (txtKm.isSelected) {
                if(txtKm.text == "0"){
                    txtKm.text = "6"
                    KilometersSelected(Double(txtKm.text!)!)
                } else {
                    txtKm.text = txtKm.text! + "6"
                    KilometersSelected(Double(txtKm.text!)!)
                }
            }
            if (txtMiles.isSelected){
                if(txtMiles.text == "0"){
                    txtMiles.text = "6"
                    MilesSelected(Double(txtMiles.text!)!)
                } else {
                    txtMiles.text = txtMiles.text! + "6"
                    MilesSelected(Double(txtMiles.text!)!)
                }
            }
            if(txtNautical.isSelected)
            {
                if(txtNautical.text == "0"){
                    txtNautical.text = "6"
                    NauticalSelected(Double(txtNautical.text!)!)
                } else {
                    txtNautical.text = txtNautical.text! + "6"
                    NauticalSelected(Double(txtNautical.text!)!)
                }
            }
        case "7":
            // 7
            if(txtMetres.isSelected)
            {
                if(txtMetres.text == "0") {
                    txtMetres.text = "7"
                    MetresSelected(Double(txtMetres.text!)!)
                } else {
                    txtMetres.text = txtMetres.text! + "7"
                    MetresSelected(Double(txtMetres.text!)!)
                }
            }
            if (txtKm.isSelected) {
                if(txtKm.text == "0"){
                    txtKm.text = "7"
                    KilometersSelected(Double(txtKm.text!)!)
                } else {
                    txtKm.text = txtKm.text! + "7"
                    KilometersSelected(Double(txtKm.text!)!)
                }
            }
            if (txtMiles.isSelected){
                if(txtMiles.text == "0"){
                    txtMiles.text = "7"
                    MilesSelected(Double(txtMiles.text!)!)
                } else {
                    txtMiles.text = txtMiles.text! + "7"
                    MilesSelected(Double(txtMiles.text!)!)
                }
            }
            if(txtNautical.isSelected)
            {
                if(txtNautical.text == "0"){
                    txtNautical.text = "7"
                    NauticalSelected(Double(txtNautical.text!)!)
                } else {
                    txtNautical.text = txtNautical.text! + "7"
                    NauticalSelected(Double(txtNautical.text!)!)
                }
            }
        case "8":
            // 8
            if(txtMetres.isSelected)
            {
                if(txtMetres.text == "0") {
                    txtMetres.text = "8"
                    MetresSelected(Double(txtMetres.text!)!)
                } else {
                    txtMetres.text = txtMetres.text! + "8"
                    MetresSelected(Double(txtMetres.text!)!)
                }
            }
            if (txtKm.isSelected) {
                if(txtKm.text == "0"){
                    txtKm.text = "8"
                    KilometersSelected(Double(txtKm.text!)!)
                } else {
                    txtKm.text = txtKm.text! + "8"
                    KilometersSelected(Double(txtKm.text!)!)
                }
            }
            if (txtMiles.isSelected){
                if(txtMiles.text == "0"){
                    txtMiles.text = "8"
                    MilesSelected(Double(txtMiles.text!)!)
                } else {
                    txtMiles.text = txtMiles.text! + "8"
                    MilesSelected(Double(txtMiles.text!)!)
                }
            }
            if(txtNautical.isSelected)
            {
                if(txtNautical.text == "0"){
                    txtNautical.text = "8"
                    NauticalSelected(Double(txtNautical.text!)!)
                } else {
                    txtNautical.text = txtNautical.text! + "8"
                    NauticalSelected(Double(txtNautical.text!)!)
                }
            }
        case "9":
            // 9
            if(txtMetres.isSelected)
            {
                if(txtMetres.text == "0") {
                    txtMetres.text = "9"
                    MetresSelected(Double(txtMetres.text!)!)
                } else {
                    txtMetres.text = txtMetres.text! + "9"
                    MetresSelected(Double(txtMetres.text!)!)
                }
            }
            if (txtKm.isSelected) {
                if(txtKm.text == "0"){
                    txtKm.text = "9"
                    KilometersSelected(Double(txtKm.text!)!)
                } else {
                    txtKm.text = txtKm.text! + "9"
                    KilometersSelected(Double(txtKm.text!)!)
                }
            }
            if (txtMiles.isSelected){
                if(txtMiles.text == "0"){
                    txtMiles.text = "9"
                    MilesSelected(Double(txtMiles.text!)!)
                } else {
                    txtMiles.text = txtMiles.text! + "9"
                    MilesSelected(Double(txtMiles.text!)!)
                }
            }
            if(txtNautical.isSelected)
            {
                if(txtNautical.text == "0"){
                    txtNautical.text = "9"
                    NauticalSelected(Double(txtNautical.text!)!)
                } else {
                    txtNautical.text = txtNautical.text! + "9"
                    NauticalSelected(Double(txtNautical.text!)!)
                }
            }
        case "0":
            // 0
            if(txtMetres.isSelected)
            {
                if(txtMetres.text == "0") {
                    txtMetres.text = "0"
                    MetresSelected(Double(txtMetres.text!)!)
                } else {
                    txtMetres.text = txtMetres.text! + "0"
                    MetresSelected(Double(txtMetres.text!)!)
                }
            }
            if (txtKm.isSelected) {
                if(txtKm.text == "0"){
                    txtKm.text = "0"
                    KilometersSelected(Double(txtKm.text!)!)
                } else {
                    txtKm.text = txtKm.text! + "0"
                    KilometersSelected(Double(txtKm.text!)!)
                }
            }
            if (txtMiles.isSelected){
                if(txtMiles.text == "0"){
                    txtMiles.text = "0"
                    MilesSelected(Double(txtMiles.text!)!)
                } else {
                    txtMiles.text = txtMiles.text! + "0"
                    MilesSelected(Double(txtMiles.text!)!)
                }
            }
            if(txtNautical.isSelected)
            {
                if(txtNautical.text == "0"){
                    txtNautical.text = "0"
                    NauticalSelected(Double(txtNautical.text!)!)
                } else {
                    txtNautical.text = txtNautical.text! + "0"
                    NauticalSelected(Double(txtNautical.text!)!)
                }
            }
        case ".":
            // .
            if(txtMetres.isSelected)
            { if(txtMetres.text?.contains("."))!
            {
                lblError.text = "Sorry, you can't add '.' twice!"
            } else {
                txtMetres.text = txtMetres.text! + "."
                MetresSelected(Double(txtMetres.text!)!)
                }
            }
            if(txtKm.isSelected)
            { if(txtKm.text?.contains("."))!
            {
                lblError.text = "Sorry, you can't add '.' twice!"
            } else {
                txtKm.text = txtKm.text! + "."
                KilometersSelected(Double(txtKm.text!)!)
                }
            }
            if(txtMiles.isSelected)
            { if(txtMiles.text?.contains("."))!
            {
                lblError.text = "Sorry, you can't add '.' twice!"
            } else {
                txtMiles.text = txtMiles.text! + "."
                MilesSelected(Double(txtMiles.text!)!)
                }
            }
            if(txtNautical.isSelected)
            { if(txtNautical.text?.contains("."))!
            {
                lblError.text = "Sorry, you can't add '.' twice!"
            } else {
                txtNautical.text = txtNautical.text! + "."
                NauticalSelected(Double(txtNautical.text!)!)
                }
            }
        //
        case "-":
            // -
            lblError.text = "Sorry, this is not available."
        //
        case "DEL":
            // DEL
            if(txtMetres.isSelected)
            {
                txtMetres.text = String((txtMetres.text?.dropLast())!)
                if(txtMetres.text == "")
                {
                    txtMetres.text = "0"
                }
                MetresSelected(Double(txtMetres.text!)!)
            }
            
            if (txtKm.isSelected) {
                txtKm.text = String((txtKm.text?.dropLast())!)
                if(txtKm.text == "")
                {
                    txtKm.text = "0"
                }
                KilometersSelected(Double(txtKm.text!)!)
            }
            if (txtMiles.isSelected){
                txtMiles.text = String((txtMiles.text?.dropLast())!)
                if(txtMiles.text == "")
                {
                    txtMiles.text = "0"
                }
                MilesSelected(Double(txtMiles.text!)!)
            }
            if(txtNautical.isSelected)
            {
                txtNautical.text = String((txtNautical.text?.dropLast())!)
                if(txtNautical.text == "")
                {
                    txtNautical.text = "0"
                }
                NauticalSelected(Double(txtNautical.text!)!)
            }
            //
            
        default:
            break;
        }
    }
    //End of Keyboard
    
    //Extra buttons
    @IBAction func btnSave_Touched(_ sender: Any) {
        
        _speedHistoryArray = UserDefaults.standard.array(forKey: "sh") as! [String]
        
        let metres = txtMetres.text!
        let km = txtKm.text!
        let miles = txtMiles.text!
        let nautical = txtNautical.text!
        
        let stringConcat: String
        stringConcat = "Metres: " + metres + "\n"
            + "Kilometers: " + km + "\n"
            + "Miles: " + miles + "\n"
            + "Nautical: " + nautical + "\n"
            + "\n" + "-----------"
        
        _speedHistoryArray.append(stringConcat)
        UserDefaults.standard.set(_speedHistoryArray, forKey: "sh")
        
    }
    
    @IBAction func btnBack_Tapped(_ sender: Any) {
        performSegue(withIdentifier: "Id3_HomePage", sender: self)
    }
    @IBAction func btnHistory_Touched(_ sender: Any) {
        performSegue(withIdentifier: "Id_SpeedHistory", sender: self)
    }
    private func LoadUserDefaults() -> Void{
        
        let testUserDefaults = UserDefaults.standard.bool(forKey: "sh")
        if testUserDefaults == false{
            _speedHistoryArray = UserDefaults.standard.array(forKey: "sh") as! [String]
        } else {
            let stringConcat: String
            stringConcat = "Metres:Loading... " + "\n"
                + "Kilometers:Loading...  " + "\n"
                + "Miles:Loading...  " + "\n"
                + "Nautical:Loading...  " + "\n"
                + "\n" + "-----------"
            
            _speedHistoryArray.append(stringConcat)
            UserDefaults.standard.set(_speedHistoryArray, forKey: "sh")
        }
    }

}
