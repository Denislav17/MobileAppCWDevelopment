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
    @IBOutlet weak var lblError: UILabel!
    
    //text boxes
    @IBOutlet weak var txtKg: UITextField!
    @IBOutlet weak var txtGrams: UITextField!
    @IBOutlet weak var txtOunces: UITextField!
    @IBOutlet weak var txtPounds: UITextField!
    @IBOutlet weak var txtStone: UITextField!
    @IBOutlet weak var txtPound: UITextField!
    //end of text boxes
    //Keyboard explicit outlets
    @IBOutlet weak var KeyboardButtonMinus: UIButton!
    //end of keyboard explicit outlets
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Keyboard.isHidden = true
        
        txtKg.isSelected = false
        txtGrams.isSelected = false
        txtOunces.isSelected = false
        txtPounds.isSelected = false
        txtStone.isSelected = false
        txtPound.isSelected = false

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
        txtGrams.text = String(format:"%.2f", kg*1000)
        txtOunces.text = String(format:"%.2f", kg*35.274)
        txtPounds.text = String(format:"%.2f", kg*2.205)
        
        //Stone/Pounds Calc
        var stonePounds = kg/6.35
        let modfStonePounds = modf(stonePounds)
        txtStone.text = String(format:"%.2f", modfStonePounds.0)
        txtPound.text = String(format:"%.2f", modfStonePounds.1)
        
        //let kgWeight = Weight(kg: kg, gr: Double(txtGrams.text!)!, ounc: Double(txtOunces.text!)!, pounds: Double(txtPounds.text!)!, stone: Double(txtStone.text!)!, pound: Double(txtPound.text!)!)
    }
    func GramsSelected(_ grams:Double) -> Void {
        txtKg.text = String(format:"%.2f", grams/1000)
        txtOunces.text = String(format:"%.2f", grams/28.35)
        txtPounds.text = String(format:"%.2f", grams/453.592)
        
        //Stone/Pounds Calc
        var stonePounds = grams/6350.293
        let modfStonePounds = modf(stonePounds)
        txtStone.text = String(format:"%.2f", modfStonePounds.0)
        txtPound.text = String(format:"%.2f", modfStonePounds.1)
    }
    func OuncesSelected(_ ounces: Double) -> Void {
        txtKg.text = String(format:"%.2f", ounces/35.274)
        txtGrams.text = String(format:"%.2f", ounces*28.35)
        txtPounds.text = String(format:"%.2f", ounces/16)
        
        //Stone/Pounds Calc
        var stonePounds = ounces/224
        let modfStonePounds = modf(stonePounds)
        txtStone.text = String(format:"%.2f", modfStonePounds.0)
        txtPound.text = String(format:"%.2f", modfStonePounds.1)
    }
    func PoundsSelected(_ pounds: Double) -> Void{
        txtKg.text = String(format:"%.2f", pounds/2.205)
        txtGrams.text = String(format:"%.2f", pounds*453.592)
        txtOunces.text = String(format:"%.2f", pounds*16)
        
        //Stone/Pounds Calc
        var stonePounds = pounds/14
        let modfStonePounds = modf(stonePounds)
        txtStone.text = String(format:"%.2f", modfStonePounds.0)
        txtPound.text = String(format:"%.2f", modfStonePounds.1)
    }
    //End of Calcs and Convs
    //Buttons Area Func
    @IBAction func btnBack_Clicked(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "Id1_HomePage", sender:self)
    }
    //End of Button Area Func
    
    
    //Keyboard Func
    @IBAction func keyboardButton_Tapped(_ sender: UIButton) {
        switch (sender.titleLabel?.text) {
        case "1":
            // 1
            if(txtKg.isSelected)
            {
                if(txtKg.text == "0") {
                txtKg.text = "1"
                KilogramsSelected(Double(txtKg.text!)!)
                } else {
                txtKg.text = txtKg.text! + "1"
                KilogramsSelected(Double(txtKg.text!)!)
                }
            }
            if (txtGrams.isSelected) {
                if(txtGrams.text == "0"){
                txtGrams.text = "1"
                GramsSelected(Double(txtGrams.text!)!)
                } else {
                txtGrams.text = txtGrams.text! + "1"
                GramsSelected(Double(txtGrams.text!)!)
                }
            }
            if (txtOunces.isSelected){
                if(txtOunces.text == "0"){
                    txtOunces.text = "1"
                    OuncesSelected(Double(txtOunces.text!)!)
                } else {
                txtOunces.text = txtOunces.text! + "1"
                OuncesSelected(Double(txtOunces.text!)!)
                }
            }
            if(txtPounds.isSelected)
            {
                if(txtPounds.text == "0"){
                txtPounds.text = "1"
                PoundsSelected(Double(txtPounds.text!)!)
                } else {
                txtPounds.text = txtPounds.text! + "1"
                PoundsSelected(Double(txtPounds.text!)!)
                }
            }
        case "2":
            // 2
            if(txtKg.isSelected)
            {
                if(txtKg.text == "0") {
                    txtKg.text = "2"
                    KilogramsSelected(Double(txtKg.text!)!)
                } else {
                    txtKg.text = txtKg.text! + "2"
                    KilogramsSelected(Double(txtKg.text!)!)
                }
            }
            if (txtGrams.isSelected) {
                if(txtGrams.text == "0"){
                    txtGrams.text = "2"
                    GramsSelected(Double(txtGrams.text!)!)
                } else {
                    txtGrams.text = txtGrams.text! + "2"
                    GramsSelected(Double(txtGrams.text!)!)
                }
            }
            if (txtOunces.isSelected){
                if(txtOunces.text == "0"){
                    txtOunces.text = "2"
                    OuncesSelected(Double(txtOunces.text!)!)
                } else {
                    txtOunces.text = txtOunces.text! + "2"
                    OuncesSelected(Double(txtOunces.text!)!)
                }
            }
            if(txtPounds.isSelected)
            {
                if(txtPounds.text == "0"){
                    txtPounds.text = "2"
                    PoundsSelected(Double(txtPounds.text!)!)
                } else {
                    txtPounds.text = txtPounds.text! + "2"
                    PoundsSelected(Double(txtPounds.text!)!)
                }
            }
        case "3":
            // 3
            if(txtKg.isSelected)
            {
                if(txtKg.text == "0") {
                    txtKg.text = "3"
                    KilogramsSelected(Double(txtKg.text!)!)
                } else {
                    txtKg.text = txtKg.text! + "3"
                    KilogramsSelected(Double(txtKg.text!)!)
                }
            }
            if (txtGrams.isSelected) {
                if(txtGrams.text == "0"){
                    txtGrams.text = "3"
                    GramsSelected(Double(txtGrams.text!)!)
                } else {
                    txtGrams.text = txtGrams.text! + "3"
                    GramsSelected(Double(txtGrams.text!)!)
                }
            }
            if (txtOunces.isSelected){
                if(txtOunces.text == "0"){
                    txtOunces.text = "3"
                    OuncesSelected(Double(txtOunces.text!)!)
                } else {
                    txtOunces.text = txtOunces.text! + "3"
                    OuncesSelected(Double(txtOunces.text!)!)
                }
            }
            if(txtPounds.isSelected)
            {
                if(txtPounds.text == "0"){
                    txtPounds.text = "3"
                    PoundsSelected(Double(txtPounds.text!)!)
                } else {
                    txtPounds.text = txtPounds.text! + "3"
                    PoundsSelected(Double(txtPounds.text!)!)
                }
            }
        case "4":
            // 4
            if(txtKg.isSelected)
            {
                if(txtKg.text == "0") {
                    txtKg.text = "4"
                    KilogramsSelected(Double(txtKg.text!)!)
                } else {
                    txtKg.text = txtKg.text! + "4"
                    KilogramsSelected(Double(txtKg.text!)!)
                }
            }
            if (txtGrams.isSelected) {
                if(txtGrams.text == "0"){
                    txtGrams.text = "4"
                    GramsSelected(Double(txtGrams.text!)!)
                } else {
                    txtGrams.text = txtGrams.text! + "4"
                    GramsSelected(Double(txtGrams.text!)!)
                }
            }
            if (txtOunces.isSelected){
                if(txtOunces.text == "0"){
                    txtOunces.text = "4"
                    OuncesSelected(Double(txtOunces.text!)!)
                } else {
                    txtOunces.text = txtOunces.text! + "4"
                    OuncesSelected(Double(txtOunces.text!)!)
                }
            }
            if(txtPounds.isSelected)
            {
                if(txtPounds.text == "0"){
                    txtPounds.text = "4"
                    PoundsSelected(Double(txtPounds.text!)!)
                } else {
                    txtPounds.text = txtPounds.text! + "4"
                    PoundsSelected(Double(txtPounds.text!)!)
                }
            }
        case "5":
            // 5
            if(txtKg.isSelected)
            {
                if(txtKg.text == "0") {
                    txtKg.text = "5"
                    KilogramsSelected(Double(txtKg.text!)!)
                } else {
                    txtKg.text = txtKg.text! + "5"
                    KilogramsSelected(Double(txtKg.text!)!)
                }
            }
            if (txtGrams.isSelected) {
                if(txtGrams.text == "0"){
                    txtGrams.text = "5"
                    GramsSelected(Double(txtGrams.text!)!)
                } else {
                    txtGrams.text = txtGrams.text! + "5"
                    GramsSelected(Double(txtGrams.text!)!)
                }
            }
            if (txtOunces.isSelected){
                if(txtOunces.text == "0"){
                    txtOunces.text = "5"
                    OuncesSelected(Double(txtOunces.text!)!)
                } else {
                    txtOunces.text = txtOunces.text! + "5"
                    OuncesSelected(Double(txtOunces.text!)!)
                }
            }
            if(txtPounds.isSelected)
            {
                if(txtPounds.text == "0"){
                    txtPounds.text = "5"
                    PoundsSelected(Double(txtPounds.text!)!)
                } else {
                    txtPounds.text = txtPounds.text! + "5"
                    PoundsSelected(Double(txtPounds.text!)!)
                }
            }
        case "6":
            // 6
            if(txtKg.isSelected)
            {
                if(txtKg.text == "0") {
                    txtKg.text = "6"
                    KilogramsSelected(Double(txtKg.text!)!)
                } else {
                    txtKg.text = txtKg.text! + "6"
                    KilogramsSelected(Double(txtKg.text!)!)
                }
            }
            if (txtGrams.isSelected) {
                if(txtGrams.text == "0"){
                    txtGrams.text = "6"
                    GramsSelected(Double(txtGrams.text!)!)
                } else {
                    txtGrams.text = txtGrams.text! + "6"
                    GramsSelected(Double(txtGrams.text!)!)
                }
            }
            if (txtOunces.isSelected){
                if(txtOunces.text == "0"){
                    txtOunces.text = "6"
                    OuncesSelected(Double(txtOunces.text!)!)
                } else {
                    txtOunces.text = txtOunces.text! + "6"
                    OuncesSelected(Double(txtOunces.text!)!)
                }
            }
            if(txtPounds.isSelected)
            {
                if(txtPounds.text == "0"){
                    txtPounds.text = "6"
                    PoundsSelected(Double(txtPounds.text!)!)
                } else {
                    txtPounds.text = txtPounds.text! + "6"
                    PoundsSelected(Double(txtPounds.text!)!)
                }
            }
        case "7":
            // 7
            if(txtKg.isSelected)
            {
                if(txtKg.text == "0") {
                    txtKg.text = "7"
                    KilogramsSelected(Double(txtKg.text!)!)
                } else {
                    txtKg.text = txtKg.text! + "7"
                    KilogramsSelected(Double(txtKg.text!)!)
                }
            }
            if (txtGrams.isSelected) {
                if(txtGrams.text == "0"){
                    txtGrams.text = "7"
                    GramsSelected(Double(txtGrams.text!)!)
                } else {
                    txtGrams.text = txtGrams.text! + "7"
                    GramsSelected(Double(txtGrams.text!)!)
                }
            }
            if (txtOunces.isSelected){
                if(txtOunces.text == "0"){
                    txtOunces.text = "7"
                    OuncesSelected(Double(txtOunces.text!)!)
                } else {
                    txtOunces.text = txtOunces.text! + "7"
                    OuncesSelected(Double(txtOunces.text!)!)
                }
            }
            if(txtPounds.isSelected)
            {
                if(txtPounds.text == "0"){
                    txtPounds.text = "7"
                    PoundsSelected(Double(txtPounds.text!)!)
                } else {
                    txtPounds.text = txtPounds.text! + "7"
                    PoundsSelected(Double(txtPounds.text!)!)
                }
            }
        case "8":
            // 8
            if(txtKg.isSelected)
            {
                if(txtKg.text == "0") {
                    txtKg.text = "8"
                    KilogramsSelected(Double(txtKg.text!)!)
                } else {
                    txtKg.text = txtKg.text! + "8"
                    KilogramsSelected(Double(txtKg.text!)!)
                }
            }
            if (txtGrams.isSelected) {
                if(txtGrams.text == "0"){
                    txtGrams.text = "8"
                    GramsSelected(Double(txtGrams.text!)!)
                } else {
                    txtGrams.text = txtGrams.text! + "8"
                    GramsSelected(Double(txtGrams.text!)!)
                }
            }
            if (txtOunces.isSelected){
                if(txtOunces.text == "0"){
                    txtOunces.text = "8"
                    OuncesSelected(Double(txtOunces.text!)!)
                } else {
                    txtOunces.text = txtOunces.text! + "8"
                    OuncesSelected(Double(txtOunces.text!)!)
                }
            }
            if(txtPounds.isSelected)
            {
                if(txtPounds.text == "0"){
                    txtPounds.text = "8"
                    PoundsSelected(Double(txtPounds.text!)!)
                } else {
                    txtPounds.text = txtPounds.text! + "8"
                    PoundsSelected(Double(txtPounds.text!)!)
                }
            }
        case "9":
            // 9
            if(txtKg.isSelected)
            {
                if(txtKg.text == "0") {
                    txtKg.text = "9"
                    KilogramsSelected(Double(txtKg.text!)!)
                } else {
                    txtKg.text = txtKg.text! + "9"
                    KilogramsSelected(Double(txtKg.text!)!)
                }
            }
            if (txtGrams.isSelected) {
                if(txtGrams.text == "0"){
                    txtGrams.text = "9"
                    GramsSelected(Double(txtGrams.text!)!)
                } else {
                    txtGrams.text = txtGrams.text! + "9"
                    GramsSelected(Double(txtGrams.text!)!)
                }
            }
            if (txtOunces.isSelected){
                if(txtOunces.text == "0"){
                    txtOunces.text = "9"
                    OuncesSelected(Double(txtOunces.text!)!)
                } else {
                    txtOunces.text = txtOunces.text! + "9"
                    OuncesSelected(Double(txtOunces.text!)!)
                }
            }
            if(txtPounds.isSelected)
            {
                if(txtPounds.text == "0"){
                    txtPounds.text = "9"
                    PoundsSelected(Double(txtPounds.text!)!)
                } else {
                    txtPounds.text = txtPounds.text! + "9"
                    PoundsSelected(Double(txtPounds.text!)!)
                }
            }
        case "0":
            // 0
            if(txtKg.isSelected)
            {
                if(txtKg.text == "0") {
                    txtKg.text = "0"
                    KilogramsSelected(Double(txtKg.text!)!)
                } else {
                    txtKg.text = txtKg.text! + "0"
                    KilogramsSelected(Double(txtKg.text!)!)
                }
            }
            if (txtGrams.isSelected) {
                if(txtGrams.text == "0"){
                    txtGrams.text = "0"
                    GramsSelected(Double(txtGrams.text!)!)
                } else {
                    txtGrams.text = txtGrams.text! + "0"
                    GramsSelected(Double(txtGrams.text!)!)
                }
            }
            if (txtOunces.isSelected){
                if(txtOunces.text == "0"){
                    txtOunces.text = "0"
                    OuncesSelected(Double(txtOunces.text!)!)
                } else {
                    txtOunces.text = txtOunces.text! + "0"
                    OuncesSelected(Double(txtOunces.text!)!)
                }
            }
            if(txtPounds.isSelected)
            {
                if(txtPounds.text == "0"){
                    txtPounds.text = "0"
                    PoundsSelected(Double(txtPounds.text!)!)
                } else {
                    txtPounds.text = txtPounds.text! + "0"
                    PoundsSelected(Double(txtPounds.text!)!)
                }
            }
        case ".":
            // .
            if(txtKg.isSelected)
            { if(txtKg.text?.contains("."))!
                {
                lblError.text = "Sorry, you can't add '.' twice!"
                } else {
                 txtKg.text = txtKg.text! + "."
                 KilogramsSelected(Double(txtKg.text!)!)
                }
            }
            if(txtGrams.isSelected)
            { if(txtGrams.text?.contains("."))!
                {
                lblError.text = "Sorry, you can't add '.' twice!"
                } else {
                    txtGrams.text = txtGrams.text! + "."
                    GramsSelected(Double(txtGrams.text!)!)
                }
            }
            if(txtOunces.isSelected)
            { if(txtOunces.text?.contains("."))!
                {
                lblError.text = "Sorry, you can't add '.' twice!"
                } else {
                    txtOunces.text = txtOunces.text! + "."
                    OuncesSelected(Double(txtOunces.text!)!)
                }
            }
            if(txtPounds.isSelected)
            { if(txtPounds.text?.contains("."))!
                {
                lblError.text = "Sorry, you can't add '.' twice!"
                } else {
                    txtPounds.text = txtPounds.text! + "."
                    PoundsSelected(Double(txtPounds.text!)!)
                }
            }
            //
        case "-":
        // -
            lblError.text = "Sorry, this is not available."
        //
        case "DEL":
        // DEL
        if(txtKg.isSelected)
        {
            txtKg.text = String((txtKg.text?.dropLast())!)
            if(txtKg.text == "")
            {
               txtKg.text = "0"
            }
            KilogramsSelected(Double(txtKg.text!)!)
        }
        
        if (txtGrams.isSelected) {
            txtGrams.text = String((txtGrams.text?.dropLast())!)
            if(txtGrams.text == "")
            {
                txtGrams.text = "0"
            }
            GramsSelected(Double(txtGrams.text!)!)
        }
        if (txtOunces.isSelected){
            txtOunces.text = String((txtOunces.text?.dropLast())!)
            if(txtOunces.text == "")
            {
                txtOunces.text = "0"
            }
            OuncesSelected(Double(txtOunces.text!)!)
        }
        if(txtPounds.isSelected)
        {
            txtPounds.text = String((txtPounds.text?.dropLast())!)
            if(txtPounds.text == "")
            {
                txtPounds.text = "0"
            }
            PoundsSelected(Double(txtPounds.text!)!)
        }
        //
            
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
        txtStone.text = ""
        txtPound.text = ""
        
        
        txtKg.isSelected = false
        txtGrams.isSelected = false
        txtOunces.isSelected = false
        txtPounds.isSelected = false
        
        

    }
    
    //End of Keyboard Func
    
}
