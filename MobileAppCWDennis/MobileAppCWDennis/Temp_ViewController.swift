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
    @IBOutlet weak var lblError: UILabel!   
    
    private var _tempHistoryArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Keyboard.isHidden = true
        
        txtCelsius.isSelected = false
        txtFahrenheit.isSelected = false
        txtKelvin.isSelected = false
        
        LoadUserDefaults()
        
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
        txtFahrenheit.text = "0.000"
        txtKelvin.text = "0.000"
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
        txtCelsius.text = "0.000"
        txtFahrenheit.text = ""
        txtKelvin.text = "0.000"
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
        txtCelsius.text = "0.000"
        txtFahrenheit.text = "0.000"
        txtKelvin.text = ""
    }
    
    //Calculations
    func CelsiusSelected(_ celsius: Double) -> Void {
        txtFahrenheit.text = String(format:"%.4f", (celsius*(9/5) + 32))
        txtKelvin.text = String(format:"%.4f", (celsius+273.15))
    }
    func FahrenheitSelected(_ fah: Double) -> Void {
        txtCelsius.text = String(format:"%.4f", ((fah-32)*(5/9)))
        txtKelvin.text = String(format:"%.4f", ((fah-32)*(5/9)+273.15))
    }
    func KelvinSelected(_ kelvin: Double) -> Void {
        txtCelsius.text = String(format: "%.4f", (kelvin-273.15))
        txtFahrenheit.text = String(format: "%.4f", (kelvin-273.15)*(9/5)+32)
    }
    //End of Calc
    //Keyboard init
    @IBAction func keyboardButton_Tapped(_ sender: UIButton) {
        switch (sender.titleLabel?.text) {
        case "1":
            // 1
            if(txtCelsius.isSelected)
            {
                if(txtCelsius.text == "0.000") {
                    txtCelsius.text = "1"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                } else {
                    txtCelsius.text = txtCelsius.text! + "1"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                }
            }
            if (txtFahrenheit.isSelected) {
                if(txtFahrenheit.text == "0.000"){
                    txtFahrenheit.text = "1"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                } else {
                    txtFahrenheit.text = txtFahrenheit.text! + "1"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                }
            }
            if (txtKelvin.isSelected){
                if(txtKelvin.text == "0.000"){
                    txtKelvin.text = "1"
                    KelvinSelected(Double(txtKelvin.text!)!)
                } else {
                    txtKelvin.text = txtKelvin.text! + "1"
                    KelvinSelected(Double(txtKelvin.text!)!)
                }
            }
        case "2":
            // 2
            if(txtCelsius.isSelected)
            {
                if(txtCelsius.text == "0.000") {
                    txtCelsius.text = "2"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                } else {
                    txtCelsius.text = txtCelsius.text! + "2"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                }
            }
            if (txtFahrenheit.isSelected) {
                if(txtFahrenheit.text == "0.000"){
                    txtFahrenheit.text = "2"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                } else {
                    txtFahrenheit.text = txtFahrenheit.text! + "2"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                }
            }
            if (txtKelvin.isSelected){
                if(txtKelvin.text == "0.000"){
                    txtKelvin.text = "2"
                    KelvinSelected(Double(txtKelvin.text!)!)
                } else {
                    txtKelvin.text = txtKelvin.text! + "2"
                    KelvinSelected(Double(txtKelvin.text!)!)
                }
            }
        case "3":
            // 3
            if(txtCelsius.isSelected)
            {
                if(txtCelsius.text == "0.000") {
                    txtCelsius.text = "3"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                } else {
                    txtCelsius.text = txtCelsius.text! + "3"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                }
            }
            if (txtFahrenheit.isSelected) {
                if(txtFahrenheit.text == "0.000"){
                    txtFahrenheit.text = "3"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                } else {
                    txtFahrenheit.text = txtFahrenheit.text! + "3"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                }
            }
            if (txtKelvin.isSelected){
                if(txtKelvin.text == "0.000"){
                    txtKelvin.text = "3"
                    KelvinSelected(Double(txtKelvin.text!)!)
                } else {
                    txtKelvin.text = txtKelvin.text! + "3"
                    KelvinSelected(Double(txtKelvin.text!)!)
                }
            }
        case "4":
            // 4
            if(txtCelsius.isSelected)
            {
                if(txtCelsius.text == "0.000") {
                    txtCelsius.text = "4"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                } else {
                    txtCelsius.text = txtCelsius.text! + "4"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                }
            }
            if (txtFahrenheit.isSelected) {
                if(txtFahrenheit.text == "0.000"){
                    txtFahrenheit.text = "4"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                } else {
                    txtFahrenheit.text = txtFahrenheit.text! + "4"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                }
            }
            if (txtKelvin.isSelected){
                if(txtKelvin.text == "0.000"){
                    txtKelvin.text = "4"
                    KelvinSelected(Double(txtKelvin.text!)!)
                } else {
                    txtKelvin.text = txtKelvin.text! + "4"
                    KelvinSelected(Double(txtKelvin.text!)!)
                }
            }
        case "5":
            // 5
            if(txtCelsius.isSelected)
            {
                if(txtCelsius.text == "0.000") {
                    txtCelsius.text = "5"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                } else {
                    txtCelsius.text = txtCelsius.text! + "5"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                }
            }
            if (txtFahrenheit.isSelected) {
                if(txtFahrenheit.text == "0.000"){
                    txtFahrenheit.text = "5"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                } else {
                    txtFahrenheit.text = txtFahrenheit.text! + "5"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                }
            }
            if (txtKelvin.isSelected){
                if(txtKelvin.text == "0.000"){
                    txtKelvin.text = "5"
                    KelvinSelected(Double(txtKelvin.text!)!)
                } else {
                    txtKelvin.text = txtKelvin.text! + "5"
                    KelvinSelected(Double(txtKelvin.text!)!)
                }
            }
        case "6":
            // 6
            if(txtCelsius.isSelected)
            {
                if(txtCelsius.text == "0.000") {
                    txtCelsius.text = "6"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                } else {
                    txtCelsius.text = txtCelsius.text! + "6"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                }
            }
            if (txtFahrenheit.isSelected) {
                if(txtFahrenheit.text == "0.000"){
                    txtFahrenheit.text = "6"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                } else {
                    txtFahrenheit.text = txtFahrenheit.text! + "6"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                }
            }
            if (txtKelvin.isSelected){
                if(txtKelvin.text == "0.000"){
                    txtKelvin.text = "6"
                    KelvinSelected(Double(txtKelvin.text!)!)
                } else {
                    txtKelvin.text = txtKelvin.text! + "6"
                    KelvinSelected(Double(txtKelvin.text!)!)
                }
            }
        case "7":
            // 7
            if(txtCelsius.isSelected)
            {
                if(txtCelsius.text == "0.000") {
                    txtCelsius.text = "7"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                } else {
                    txtCelsius.text = txtCelsius.text! + "7"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                }
            }
            if (txtFahrenheit.isSelected) {
                if(txtFahrenheit.text == "0.000"){
                    txtFahrenheit.text = "7"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                } else {
                    txtFahrenheit.text = txtFahrenheit.text! + "7"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                }
            }
            if (txtKelvin.isSelected){
                if(txtKelvin.text == "0.000"){
                    txtKelvin.text = "7"
                    KelvinSelected(Double(txtKelvin.text!)!)
                } else {
                    txtKelvin.text = txtKelvin.text! + "7"
                    KelvinSelected(Double(txtKelvin.text!)!)
                }
            }
        case "8":
            // 8
            if(txtCelsius.isSelected)
            {
                if(txtCelsius.text == "0.000") {
                    txtCelsius.text = "8"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                } else {
                    txtCelsius.text = txtCelsius.text! + "8"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                }
            }
            if (txtFahrenheit.isSelected) {
                if(txtFahrenheit.text == "0.000"){
                    txtFahrenheit.text = "8"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                } else {
                    txtFahrenheit.text = txtFahrenheit.text! + "8"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                }
            }
            if (txtKelvin.isSelected){
                if(txtKelvin.text == "0.000"){
                    txtKelvin.text = "8"
                    KelvinSelected(Double(txtKelvin.text!)!)
                } else {
                    txtKelvin.text = txtKelvin.text! + "8"
                    KelvinSelected(Double(txtKelvin.text!)!)
                }
            }
        case "9":
            // 9
            if(txtCelsius.isSelected)
            {
                if(txtCelsius.text == "0.000") {
                    txtCelsius.text = "9"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                } else {
                    txtCelsius.text = txtCelsius.text! + "9"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                }
            }
            if (txtFahrenheit.isSelected) {
                if(txtFahrenheit.text == "0.000"){
                    txtFahrenheit.text = "9"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                } else {
                    txtFahrenheit.text = txtFahrenheit.text! + "9"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                }
            }
            if (txtKelvin.isSelected){
                if(txtKelvin.text == "0.000"){
                    txtKelvin.text = "9"
                    KelvinSelected(Double(txtKelvin.text!)!)
                } else {
                    txtKelvin.text = txtKelvin.text! + "9"
                    KelvinSelected(Double(txtKelvin.text!)!)
                }
            }
        case "0":
            // 0
            if(txtCelsius.isSelected)
            {
                if(txtCelsius.text == "0.000" || (txtCelsius.text?.isEmpty)!) {
                    txtCelsius.text = "0."
                    CelsiusSelected(Double(txtCelsius.text!)!)
                } else {
                    txtCelsius.text = txtCelsius.text! + "0"
                    CelsiusSelected(Double(txtCelsius.text!)!)
                }
            }
            if (txtFahrenheit.isSelected) {
                if(txtFahrenheit.text == "0.000" || (txtFahrenheit.text?.isEmpty)!){
                    txtFahrenheit.text = "0."
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                } else {
                    txtFahrenheit.text = txtFahrenheit.text! + "0"
                    FahrenheitSelected(Double(txtFahrenheit.text!)!)
                }
            }
            if (txtKelvin.isSelected){
                if(txtKelvin.text == "0.000" || (txtKelvin.text?.isEmpty)!){
                    txtKelvin.text = "0."
                    KelvinSelected(Double(txtKelvin.text!)!)
                } else {
                    txtKelvin.text = txtKelvin.text! + "0"
                    KelvinSelected(Double(txtKelvin.text!)!)
                }
            }
        case ".":
            // .
            if(txtCelsius.isSelected)
            { if((txtCelsius.text?.contains("."))! || (txtCelsius.text?.isEmpty)!)
            {
                lblError.text = "Sorry, you can't add this now!"
            } else {
                txtCelsius.text = txtCelsius.text! + "."
                CelsiusSelected(Double(txtCelsius.text!)!)
                }
            }
            if(txtFahrenheit.isSelected)
            { if((txtFahrenheit.text?.contains("."))! || (txtCelsius.text?.isEmpty)!)
            {
                lblError.text = "Sorry, you can't add this now!"
            } else {
                txtFahrenheit.text = txtFahrenheit.text! + "."
                FahrenheitSelected(Double(txtFahrenheit.text!)!)
                }
            }
            if(txtKelvin.isSelected)
            { if((txtKelvin.text?.contains("."))! || (txtCelsius.text?.isEmpty)!)
            {
                lblError.text = "Sorry, you can't add this now!"
            } else {
                txtKelvin.text = txtKelvin.text! + "."
                KelvinSelected(Double(txtKelvin.text!)!)
                }
            }
        //
        case "-":
            if(txtCelsius.isSelected)
            {
                txtCelsius.text = "-"
            }; if(txtFahrenheit.isSelected)
            {
                txtFahrenheit.text = "-"
            }; if(txtKelvin.isSelected)
            {
                txtKelvin.text = "-"
            }
        case "DEL":
            // DEL
            if(txtCelsius.isSelected)
            {
                txtCelsius.text = String((txtCelsius.text?.dropLast())!)
                if(txtCelsius.text == "" || txtCelsius.text == "-")
                {
                    txtCelsius.text = "0"
                }
                lblError.text = ""
                CelsiusSelected(Double(txtCelsius.text!)!)
            }
            
            if (txtFahrenheit.isSelected) {
                txtFahrenheit.text = String((txtFahrenheit.text?.dropLast())!)
                if(txtFahrenheit.text == "" || txtFahrenheit.text == "-")
                {
                    txtFahrenheit.text = "0"
                }
                lblError.text = ""
                FahrenheitSelected(Double(txtFahrenheit.text!)!)
            }
            if (txtKelvin.isSelected){
                txtKelvin.text = String((txtKelvin.text?.dropLast())!)
                if(txtKelvin.text == "" || txtKelvin.text == "-")
                {
                    txtKelvin.text = "0"
                }
                lblError.text = ""
                KelvinSelected(Double(txtKelvin.text!)!)
            }
        case "CLEAR":
            txtCelsius.text = "0.000"
            txtCelsius.isSelected = true
            txtFahrenheit.isSelected = false
            txtKelvin.isSelected = false
            lblError.text = ""
            CelsiusSelected(Double(txtCelsius.text!)!)
            //
            
        default:
            break;
        }
    }
    //End of Keyboard init

    //Extra buttons init
    @IBAction func btnSave_Touched(_ sender: Any) {
        
        _tempHistoryArray = UserDefaults.standard.array(forKey: "th") as! [String]
        let celsius = txtCelsius.text!
        let fahr = txtFahrenheit.text!
        let kelvin = txtKelvin.text!
        
        let stringConcat: String
        stringConcat = "Celsius: " + celsius + "\n"
            + "Fahrenheit: " + fahr + "\n"
            + "Kelvin: " + kelvin + "\n"
            + "\n" + "-----------"
        _tempHistoryArray.append(stringConcat)
        UserDefaults.standard.set(_tempHistoryArray, forKey: "th")
    }
    @IBAction func btnBack_Touched(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "Id2_HomePage", sender: self)
    }
    @IBAction func btnHistory_Touched(_ sender: Any) {
        performSegue(withIdentifier: "Id_TempHistory", sender: self)
    }
    private func LoadUserDefaults() -> Void{
        
        //let testUserDefaults = UserDefaults.standard.bool(forKey: "lh")
        let isValid:Bool
        isValid = UserDefaults.standard.object(forKey: "th") != nil
        if isValid == true {
            _tempHistoryArray = UserDefaults.standard.array(forKey: "th") as! [String]
        } else {
            let stringConcat: String
            stringConcat = "Celsius:Loading... " + "\n"
                + "Fahrenheit:Loading...  " + "\n"
                + "Kelvin:Loading...  " + "\n"
                + "\n" + "-----------"
            
            _tempHistoryArray.append(stringConcat)
            UserDefaults.standard.set(_tempHistoryArray, forKey: "th")
        }
    }

}
