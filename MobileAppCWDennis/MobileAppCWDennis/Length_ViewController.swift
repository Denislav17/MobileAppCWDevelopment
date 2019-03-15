//
//  Length_ViewController.swift
//  MobileAppCWDennis
//
//  Created by Dennis Roffetov on 13/03/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class Length_ViewController: UIViewController, UITextFieldDelegate{
    
    
    //Textboxes init
    @IBOutlet weak var txtMetre: UITextField!
    @IBOutlet weak var txtMile: UITextField!
    @IBOutlet weak var txtCm: UITextField!
    @IBOutlet weak var txtMm: UITextField!
    @IBOutlet weak var txtYard: UITextField!
    @IBOutlet weak var txtInch: UITextField!
    @IBOutlet weak var lblError: UILabel!
    @IBOutlet weak var Keyboard: UIView!
    
    private var _lengthHistoryArray: [String] = []
    //end of textboxes init
    override func viewDidLoad() {
        super.viewDidLoad()

        txtMetre.isSelected = false
        txtMile.isSelected = false
        txtCm.isSelected = false
        txtMm.isSelected = false
        txtYard.isSelected = false
        txtInch.isSelected = false
        
        Keyboard.isHidden = true
        
        LoadUserDefaults()
        
    }
    //Selection section
    @IBAction func txtMetre_Selected(_ sender: Any) {
        txtMetre.resignFirstResponder()
        txtMetre.isSelected = true
        txtMetre.backgroundColor = UIColor.lightGray
        txtMetre.textColor = UIColor.white
        Keyboard.isHidden = false
        
        //Selected
        txtMile.isSelected = false
        txtCm.isSelected = false
        txtMm.isSelected = false
        txtYard.isSelected = false
        txtInch.isSelected = false
        //Ui
        txtMile.backgroundColor = UIColor.white
        txtCm.backgroundColor = UIColor.white
        txtMm.backgroundColor = UIColor.white
        txtYard.backgroundColor = UIColor.white
        txtInch.backgroundColor = UIColor.white
        txtMile.textColor = UIColor.black
        txtCm.textColor = UIColor.black
        txtMm.textColor = UIColor.black
        txtYard.textColor = UIColor.black
        txtInch.textColor = UIColor.black
        //Text
        txtMetre.text = ""
        txtMile.text = "0.000"
        txtCm.text = "0.000"
        txtMm.text = "0.000"
        txtYard.text = "0.000"
        txtInch.text = "0.000"
        
    }
    @IBAction func txtMile_Selected(_ sender: Any) {
        txtMile.isSelected = true
        txtMile.backgroundColor = UIColor.lightGray
        txtMile.textColor = UIColor.white
        Keyboard.isHidden = false
        
        //Selected
        txtMetre.isSelected = false
        txtCm.isSelected = false
        txtMm.isSelected = false
        txtYard.isSelected = false
        txtInch.isSelected = false
        //Ui
        txtMetre.backgroundColor = UIColor.white
        txtCm.backgroundColor = UIColor.white
        txtMm.backgroundColor = UIColor.white
        txtYard.backgroundColor = UIColor.white
        txtInch.backgroundColor = UIColor.white
        txtMetre.textColor = UIColor.black
        txtCm.textColor = UIColor.black
        txtMm.textColor = UIColor.black
        txtYard.textColor = UIColor.black
        txtInch.textColor = UIColor.black
        //Text
        txtMetre.text = "0.000"
        txtMile.text = ""
        txtCm.text = "0.000"
        txtMm.text = "0.000"
        txtYard.text = "0.000"
        txtInch.text = "0.000"
    }
    @IBAction func txtCm_Selected(_ sender: Any) {
        txtCm.isSelected = true
        txtCm.backgroundColor = UIColor.lightGray
        txtCm.textColor = UIColor.white
        Keyboard.isHidden = false
        
        //Selected
        txtMetre.isSelected = false
        txtMile.isSelected = false
        txtMm.isSelected = false
        txtYard.isSelected = false
        txtInch.isSelected = false
        //Ui
        txtMetre.backgroundColor = UIColor.white
        txtMile.backgroundColor = UIColor.white
        txtMm.backgroundColor = UIColor.white
        txtYard.backgroundColor = UIColor.white
        txtInch.backgroundColor = UIColor.white
        txtMetre.textColor = UIColor.black
        txtMile.textColor = UIColor.black
        txtMm.textColor = UIColor.black
        txtYard.textColor = UIColor.black
        txtInch.textColor = UIColor.black
        //Text
        txtMetre.text = "0.000"
        txtMile.text = "0.000"
        txtCm.text = ""
        txtMm.text = "0.000"
        txtYard.text = "0.000"
        txtInch.text = "0.000"
    }
    @IBAction func txtMm_Selected(_ sender: Any) {
        txtMm.isSelected = true
        txtMm.backgroundColor = UIColor.lightGray
        txtMm.textColor = UIColor.white
        Keyboard.isHidden = false
        
        //Selected
        txtMetre.isSelected = false
        txtMile.isSelected = false
        txtCm.isSelected = false
        txtYard.isSelected = false
        txtInch.isSelected = false
        //Ui
        txtMetre.backgroundColor = UIColor.white
        txtMile.backgroundColor = UIColor.white
        txtCm.backgroundColor = UIColor.white
        txtYard.backgroundColor = UIColor.white
        txtInch.backgroundColor = UIColor.white
        txtMetre.textColor = UIColor.black
        txtMile.textColor = UIColor.black
        txtCm.textColor = UIColor.black
        txtYard.textColor = UIColor.black
        txtInch.textColor = UIColor.black
        //Text
        txtMetre.text = "0.000"
        txtMile.text = "0.000"
        txtCm.text = "0.000"
        txtMm.text = ""
        txtYard.text = "0.000"
        txtInch.text = "0.000"
    }
    @IBAction func txtYard_Selected(_ sender: Any) {
        txtYard.isSelected = true
        txtYard.backgroundColor = UIColor.lightGray
        txtYard.textColor = UIColor.white
        Keyboard.isHidden = false
        
        //Selected
        txtMetre.isSelected = false
        txtMile.isSelected = false
        txtCm.isSelected = false
        txtMm.isSelected = false
        txtInch.isSelected = false
        //Ui BackColor
        txtMetre.backgroundColor = UIColor.white
        txtMile.backgroundColor = UIColor.white
        txtCm.backgroundColor = UIColor.white
        txtMm.backgroundColor = UIColor.white
        txtInch.backgroundColor = UIColor.white
        //Ui TextColor
        txtMetre.textColor = UIColor.black
        txtMile.textColor = UIColor.black
        txtCm.textColor = UIColor.black
        txtMm.textColor = UIColor.black
        txtInch.textColor = UIColor.black
        //Text
        txtMetre.text = "0.000"
        txtMile.text = "0.000"
        txtCm.text = "0.000"
        txtMm.text = "0.000"
        txtYard.text = ""
        txtInch.text = "0.000"
    }
    @IBAction func txtInch_Selected(_ sender: Any) {
        txtInch.isSelected = true
        txtInch.backgroundColor = UIColor.lightGray
        txtInch.textColor = UIColor.white
        Keyboard.isHidden = false
        
        //Selected
        txtMetre.isSelected = false
        txtMile.isSelected = false
        txtCm.isSelected = false
        txtMm.isSelected = false
        txtYard.isSelected = false
        //Ui BackColor
        txtMetre.backgroundColor = UIColor.white
        txtMile.backgroundColor = UIColor.white
        txtCm.backgroundColor = UIColor.white
        txtMm.backgroundColor = UIColor.white
        txtYard.backgroundColor = UIColor.white
        //Ui TextColor
        txtMetre.textColor = UIColor.black
        txtMile.textColor = UIColor.black
        txtCm.textColor = UIColor.black
        txtMm.textColor = UIColor.black
        txtYard.textColor = UIColor.black
        //Text
        txtMetre.text = "0.000"
        txtMile.text = "0.000"
        txtCm.text = "0.000"
        txtMm.text = "0.000"
        txtYard.text = "0.000"
        txtInch.text = ""
    }
    //End of Selection section
    //Calc section
    func MetreSelected(_ metre:Double) -> Void{
        txtMile.text = String(format:"%.4f", metre/1609.344)
        txtCm.text = String(format:"%.4f", metre*100)
        txtMm.text = String(format:"%.4f", metre*1000)
        txtYard.text = String(format:"%.4f", metre*1.094)
        txtInch.text = String(format:"%.4f", metre*39.3701)
    }
    func MileSelected(_ mile:Double) -> Void{
        txtMetre.text = String(format:"%.4f", mile*1609.344)
        txtCm.text = String(format:"%.4f", mile*160934.4)
        txtMm.text = String(format:"%.4f", mile*1609344)
        txtYard.text = String(format:"%.4f", mile*1760)
        txtInch.text = String(format:"%.4f", mile*63360)
    }
    func CmSelected(_ cm: Double) -> Void{
        txtMetre.text = String(format:"%.4f", cm/100)
        txtMile.text = String(format:"%.4f", cm*160934.4)
        txtMm.text = String(format:"%.4f", cm*10)
        txtYard.text = String(format:"%.4f", cm/91.44)
        txtInch.text = String(format:"%.4f", cm/2.54)
    }
    func MmSelected(_ mm: Double) -> Void{
        txtMetre.text = String(format:"%.4f", mm/1000)
        txtMile.text = String(format:"%.4f", (mm/1000)/1609.344)
        txtCm.text = String(format:"%.4f", mm/10)
        txtYard.text = String(format:"%.4f", mm/914.4)
        txtInch.text = String(format:"%.4f", mm/25.4)
    }
    func YardSelected(_ yard: Double) -> Void{
        txtMetre.text = String(format:"%.4f", yard/1.094)
        txtMile.text = String(format:"%.4f", yard/1760)
        txtCm.text = String(format:"%.4f", yard*91.44)
        txtMm.text = String(format:"%.4f", yard*914.4)
        txtInch.text = String(format:"%.4f", yard*36)
    }
    func InchSelected(_ inch: Double) -> Void{
        txtMetre.text = String(format:"%.4f", inch/39.3701)
        txtMile.text = String(format:"%.4f", inch/63360)
        txtCm.text = String(format:"%.4f", inch*2.54)
        txtMm.text = String(format:"%.4f", inch*25.4)
        txtYard.text = String(format:"%.4f", inch/36)
    }
    //end of calculation section
    //Keyboard
    
    @IBAction func keyboardButton_Tapped(_ sender: UIButton) {
        switch (sender.titleLabel?.text) {
        case "1":
            // 1
            if(txtMetre.isSelected)
            {
                if(txtMetre.text == "0.000") {
                    txtMetre.text = "1"
                    MetreSelected(Double(txtMetre.text!)!)
                } else {
                    txtMetre.text = txtMetre.text! + "1"
                    MetreSelected(Double(txtMetre.text!)!)
                }
            }
            if (txtMile.isSelected) {
                if(txtMile.text == "0.000"){
                    txtMile.text = "1"
                    MileSelected(Double(txtMile.text!)!)
                } else {
                    txtMile.text = txtMile.text! + "1"
                    MileSelected(Double(txtMile.text!)!)
                }
            }
            if (txtCm.isSelected){
                if(txtCm.text == "0.000"){
                    txtCm.text = "1"
                    CmSelected(Double(txtCm.text!)!)
                } else {
                    txtCm.text = txtCm.text! + "1"
                    CmSelected(Double(txtCm.text!)!)
                }
            }
            if(txtMm.isSelected)
            {
                if(txtMm.text == "0.000"){
                    txtMm.text = "1"
                    MmSelected(Double(txtMm.text!)!)
                } else {
                    txtMm.text = txtMm.text! + "1"
                    MmSelected(Double(txtMm.text!)!)
                }
            }
            if(txtYard.isSelected)
            {
                if(txtYard.text == "0.000"){
                    txtYard.text = "1"
                    YardSelected(Double(txtYard.text!)!)
                } else {
                    txtYard.text = txtYard.text! + "1"
                    YardSelected(Double(txtYard.text!)!)
                }
            }
            if(txtInch.isSelected)
            {
                if(txtInch.text == "0.000"){
                    txtInch.text = "1"
                    InchSelected(Double(txtInch.text!)!)
                } else {
                    txtInch.text = txtInch.text! + "1"
                    InchSelected(Double(txtInch.text!)!)
                }
            }
        case "2":
            // 2
            if(txtMetre.isSelected)
            {
                if(txtMetre.text == "0.000") {
                    txtMetre.text = "2"
                    MetreSelected(Double(txtMetre.text!)!)
                } else {
                    txtMetre.text = txtMetre.text! + "2"
                    MetreSelected(Double(txtMetre.text!)!)
                }
            }
            if (txtMile.isSelected) {
                if(txtMile.text == "0.000"){
                    txtMile.text = "2"
                    MileSelected(Double(txtMile.text!)!)
                } else {
                    txtMile.text = txtMile.text! + "2"
                    MileSelected(Double(txtMile.text!)!)
                }
            }
            if (txtCm.isSelected){
                if(txtCm.text == "0.000"){
                    txtCm.text = "2"
                    CmSelected(Double(txtCm.text!)!)
                } else {
                    txtCm.text = txtCm.text! + "2"
                    CmSelected(Double(txtCm.text!)!)
                }
            }
            if(txtMm.isSelected)
            {
                if(txtMm.text == "0.000"){
                    txtMm.text = "2"
                    MmSelected(Double(txtMm.text!)!)
                } else {
                    txtMm.text = txtMm.text! + "2"
                    MmSelected(Double(txtMm.text!)!)
                }
            }
            if(txtYard.isSelected)
            {
                if(txtYard.text == "0.000"){
                    txtYard.text = "2"
                    YardSelected(Double(txtYard.text!)!)
                } else {
                    txtYard.text = txtYard.text! + "2"
                    YardSelected(Double(txtYard.text!)!)
                }
            }
            if(txtInch.isSelected)
            {
                if(txtInch.text == "0.000"){
                    txtInch.text = "2"
                    InchSelected(Double(txtInch.text!)!)
                } else {
                    txtInch.text = txtInch.text! + "2"
                    InchSelected(Double(txtInch.text!)!)
                }
            }
        case "3":
            // 3
            if(txtMetre.isSelected)
            {
                if(txtMetre.text == "0.000") {
                    txtMetre.text = "3"
                    MetreSelected(Double(txtMetre.text!)!)
                } else {
                    txtMetre.text = txtMetre.text! + "3"
                    MetreSelected(Double(txtMetre.text!)!)
                }
            }
            if (txtMile.isSelected) {
                if(txtMile.text == "0.000"){
                    txtMile.text = "3"
                    MileSelected(Double(txtMile.text!)!)
                } else {
                    txtMile.text = txtMile.text! + "3"
                    MileSelected(Double(txtMile.text!)!)
                }
            }
            if (txtCm.isSelected){
                if(txtCm.text == "0.000"){
                    txtCm.text = "3"
                    CmSelected(Double(txtCm.text!)!)
                } else {
                    txtCm.text = txtCm.text! + "3"
                    CmSelected(Double(txtCm.text!)!)
                }
            }
            if(txtMm.isSelected)
            {
                if(txtMm.text == "0.000"){
                    txtMm.text = "3"
                    MmSelected(Double(txtMm.text!)!)
                } else {
                    txtMm.text = txtMm.text! + "3"
                    MmSelected(Double(txtMm.text!)!)
                }
            }
            if(txtYard.isSelected)
            {
                if(txtYard.text == "0.000"){
                    txtYard.text = "3"
                    YardSelected(Double(txtYard.text!)!)
                } else {
                    txtYard.text = txtYard.text! + "3"
                    YardSelected(Double(txtYard.text!)!)
                }
            }
            if(txtInch.isSelected)
            {
                if(txtInch.text == "0.000"){
                    txtInch.text = "3"
                    InchSelected(Double(txtInch.text!)!)
                } else {
                    txtInch.text = txtInch.text! + "3"
                    InchSelected(Double(txtInch.text!)!)
                }
            }
        case "4":
            // 4
            if(txtMetre.isSelected)
            {
                if(txtMetre.text == "0.000") {
                    txtMetre.text = "4"
                    MetreSelected(Double(txtMetre.text!)!)
                } else {
                    txtMetre.text = txtMetre.text! + "4"
                    MetreSelected(Double(txtMetre.text!)!)
                }
            }
            if (txtMile.isSelected) {
                if(txtMile.text == "0.000"){
                    txtMile.text = "4"
                    MileSelected(Double(txtMile.text!)!)
                } else {
                    txtMile.text = txtMile.text! + "4"
                    MileSelected(Double(txtMile.text!)!)
                }
            }
            if (txtCm.isSelected){
                if(txtCm.text == "0.000"){
                    txtCm.text = "4"
                    CmSelected(Double(txtCm.text!)!)
                } else {
                    txtCm.text = txtCm.text! + "4"
                    CmSelected(Double(txtCm.text!)!)
                }
            }
            if(txtMm.isSelected)
            {
                if(txtMm.text == "0.000"){
                    txtMm.text = "4"
                    MmSelected(Double(txtMm.text!)!)
                } else {
                    txtMm.text = txtMm.text! + "4"
                    MmSelected(Double(txtMm.text!)!)
                }
            }
            if(txtYard.isSelected)
            {
                if(txtYard.text == "0.000"){
                    txtYard.text = "4"
                    YardSelected(Double(txtYard.text!)!)
                } else {
                    txtYard.text = txtYard.text! + "4"
                    YardSelected(Double(txtYard.text!)!)
                }
            }
            if(txtInch.isSelected)
            {
                if(txtInch.text == "0.000"){
                    txtInch.text = "4"
                    InchSelected(Double(txtInch.text!)!)
                } else {
                    txtInch.text = txtInch.text! + "4"
                    InchSelected(Double(txtInch.text!)!)
                }
            }
        case "5":
            // 5
            if(txtMetre.isSelected)
            {
                if(txtMetre.text == "0.000") {
                    txtMetre.text = "5"
                    MetreSelected(Double(txtMetre.text!)!)
                } else {
                    txtMetre.text = txtMetre.text! + "5"
                    MetreSelected(Double(txtMetre.text!)!)
                }
            }
            if (txtMile.isSelected) {
                if(txtMile.text == "0.000"){
                    txtMile.text = "5"
                    MileSelected(Double(txtMile.text!)!)
                } else {
                    txtMile.text = txtMile.text! + "5"
                    MileSelected(Double(txtMile.text!)!)
                }
            }
            if (txtCm.isSelected){
                if(txtCm.text == "0.000"){
                    txtCm.text = "5"
                    CmSelected(Double(txtCm.text!)!)
                } else {
                    txtCm.text = txtCm.text! + "5"
                    CmSelected(Double(txtCm.text!)!)
                }
            }
            if(txtMm.isSelected)
            {
                if(txtMm.text == "0.000"){
                    txtMm.text = "5"
                    MmSelected(Double(txtMm.text!)!)
                } else {
                    txtMm.text = txtMm.text! + "5"
                    MmSelected(Double(txtMm.text!)!)
                }
            }
            if(txtYard.isSelected)
            {
                if(txtYard.text == "0.000"){
                    txtYard.text = "5"
                    YardSelected(Double(txtYard.text!)!)
                } else {
                    txtYard.text = txtYard.text! + "5"
                    YardSelected(Double(txtYard.text!)!)
                }
            }
            if(txtInch.isSelected)
            {
                if(txtInch.text == "0.000"){
                    txtInch.text = "5"
                    InchSelected(Double(txtInch.text!)!)
                } else {
                    txtInch.text = txtInch.text! + "5"
                    InchSelected(Double(txtInch.text!)!)
                }
            }
        case "6":
            // 6
            if(txtMetre.isSelected)
            {
                if(txtMetre.text == "0.000") {
                    txtMetre.text = "6"
                    MetreSelected(Double(txtMetre.text!)!)
                } else {
                    txtMetre.text = txtMetre.text! + "6"
                    MetreSelected(Double(txtMetre.text!)!)
                }
            }
            if (txtMile.isSelected) {
                if(txtMile.text == "0.000"){
                    txtMile.text = "6"
                    MileSelected(Double(txtMile.text!)!)
                } else {
                    txtMile.text = txtMile.text! + "6"
                    MileSelected(Double(txtMile.text!)!)
                }
            }
            if (txtCm.isSelected){
                if(txtCm.text == "0.000"){
                    txtCm.text = "6"
                    CmSelected(Double(txtCm.text!)!)
                } else {
                    txtCm.text = txtCm.text! + "6"
                    CmSelected(Double(txtCm.text!)!)
                }
            }
            if(txtMm.isSelected)
            {
                if(txtMm.text == "0.000"){
                    txtMm.text = "6"
                    MmSelected(Double(txtMm.text!)!)
                } else {
                    txtMm.text = txtMm.text! + "6"
                    MmSelected(Double(txtMm.text!)!)
                }
            }
            if(txtYard.isSelected)
            {
                if(txtYard.text == "0.000"){
                    txtYard.text = "6"
                    YardSelected(Double(txtYard.text!)!)
                } else {
                    txtYard.text = txtYard.text! + "6"
                    YardSelected(Double(txtYard.text!)!)
                }
            }
            if(txtInch.isSelected)
            {
                if(txtInch.text == "0.000"){
                    txtInch.text = "6"
                    InchSelected(Double(txtInch.text!)!)
                } else {
                    txtInch.text = txtInch.text! + "6"
                    InchSelected(Double(txtInch.text!)!)
                }
            }
        case "7":
            // 7
            if(txtMetre.isSelected)
            {
                if(txtMetre.text == "0.000") {
                    txtMetre.text = "7"
                    MetreSelected(Double(txtMetre.text!)!)
                } else {
                    txtMetre.text = txtMetre.text! + "7"
                    MetreSelected(Double(txtMetre.text!)!)
                }
            }
            if (txtMile.isSelected) {
                if(txtMile.text == "0.000"){
                    txtMile.text = "7"
                    MileSelected(Double(txtMile.text!)!)
                } else {
                    txtMile.text = txtMile.text! + "7"
                    MileSelected(Double(txtMile.text!)!)
                }
            }
            if (txtCm.isSelected){
                if(txtCm.text == "0.000"){
                    txtCm.text = "7"
                    CmSelected(Double(txtCm.text!)!)
                } else {
                    txtCm.text = txtCm.text! + "7"
                    CmSelected(Double(txtCm.text!)!)
                }
            }
            if(txtMm.isSelected)
            {
                if(txtMm.text == "0.000"){
                    txtMm.text = "7"
                    MmSelected(Double(txtMm.text!)!)
                } else {
                    txtMm.text = txtMm.text! + "7"
                    MmSelected(Double(txtMm.text!)!)
                }
            }
            if(txtYard.isSelected)
            {
                if(txtYard.text == "0.000"){
                    txtYard.text = "7"
                    YardSelected(Double(txtYard.text!)!)
                } else {
                    txtYard.text = txtYard.text! + "7"
                    YardSelected(Double(txtYard.text!)!)
                }
            }
            if(txtInch.isSelected)
            {
                if(txtInch.text == "0.000"){
                    txtInch.text = "7"
                    InchSelected(Double(txtInch.text!)!)
                } else {
                    txtInch.text = txtInch.text! + "7"
                    InchSelected(Double(txtInch.text!)!)
                }
            }
        case "8":
            // 8
            if(txtMetre.isSelected)
            {
                if(txtMetre.text == "0.000") {
                    txtMetre.text = "8"
                    MetreSelected(Double(txtMetre.text!)!)
                } else {
                    txtMetre.text = txtMetre.text! + "8"
                    MetreSelected(Double(txtMetre.text!)!)
                }
            }
            if (txtMile.isSelected) {
                if(txtMile.text == "0.000"){
                    txtMile.text = "8"
                    MileSelected(Double(txtMile.text!)!)
                } else {
                    txtMile.text = txtMile.text! + "8"
                    MileSelected(Double(txtMile.text!)!)
                }
            }
            if (txtCm.isSelected){
                if(txtCm.text == "0.000"){
                    txtCm.text = "8"
                    CmSelected(Double(txtCm.text!)!)
                } else {
                    txtCm.text = txtCm.text! + "8"
                    CmSelected(Double(txtCm.text!)!)
                }
            }
            if(txtMm.isSelected)
            {
                if(txtMm.text == "0.000"){
                    txtMm.text = "8"
                    MmSelected(Double(txtMm.text!)!)
                } else {
                    txtMm.text = txtMm.text! + "8"
                    MmSelected(Double(txtMm.text!)!)
                }
            }
            if(txtYard.isSelected)
            {
                if(txtYard.text == "0.000"){
                    txtYard.text = "8"
                    YardSelected(Double(txtYard.text!)!)
                } else {
                    txtYard.text = txtYard.text! + "8"
                    YardSelected(Double(txtYard.text!)!)
                }
            }
            if(txtInch.isSelected)
            {
                if(txtInch.text == "0.000"){
                    txtInch.text = "8"
                    InchSelected(Double(txtInch.text!)!)
                } else {
                    txtInch.text = txtInch.text! + "8"
                    InchSelected(Double(txtInch.text!)!)
                }
            }
        case "9":
            // 9
            if(txtMetre.isSelected)
            {
                if(txtMetre.text == "0.000") {
                    txtMetre.text = "9"
                    MetreSelected(Double(txtMetre.text!)!)
                } else {
                    txtMetre.text = txtMetre.text! + "9"
                    MetreSelected(Double(txtMetre.text!)!)
                }
            }
            if (txtMile.isSelected) {
                if(txtMile.text == "0.000"){
                    txtMile.text = "9"
                    MileSelected(Double(txtMile.text!)!)
                } else {
                    txtMile.text = txtMile.text! + "9"
                    MileSelected(Double(txtMile.text!)!)
                }
            }
            if (txtCm.isSelected){
                if(txtCm.text == "0.000"){
                    txtCm.text = "9"
                    CmSelected(Double(txtCm.text!)!)
                } else {
                    txtCm.text = txtCm.text! + "9"
                    CmSelected(Double(txtCm.text!)!)
                }
            }
            if(txtMm.isSelected)
            {
                if(txtMm.text == "0.000"){
                    txtMm.text = "9"
                    MmSelected(Double(txtMm.text!)!)
                } else {
                    txtMm.text = txtMm.text! + "9"
                    MmSelected(Double(txtMm.text!)!)
                }
            }
            if(txtYard.isSelected)
            {
                if(txtYard.text == "0.000"){
                    txtYard.text = "9"
                    YardSelected(Double(txtYard.text!)!)
                } else {
                    txtYard.text = txtYard.text! + "9"
                    YardSelected(Double(txtYard.text!)!)
                }
            }
            if(txtInch.isSelected)
            {
                if(txtInch.text == "0.000"){
                    txtInch.text = "9"
                    InchSelected(Double(txtInch.text!)!)
                } else {
                    txtInch.text = txtInch.text! + "9"
                    InchSelected(Double(txtInch.text!)!)
                }
            }
        case "0":
            // 0
            if(txtMetre.isSelected)
            {
                if(txtMetre.text == "0.000" || (txtMetre.text?.isEmpty)!) {
                    txtMetre.text = "0."
                    MetreSelected(Double(txtMetre.text!)!)
                } else {
                    txtMetre.text = txtMetre.text! + "0"
                    MetreSelected(Double(txtMetre.text!)!)
                }
            }
            if (txtMile.isSelected) {
                if(txtMile.text == "0.000" || (txtMile.text?.isEmpty)!){
                    txtMile.text = "0."
                    MileSelected(Double(txtMile.text!)!)
                } else {
                    txtMile.text = txtMile.text! + "0"
                    MileSelected(Double(txtMile.text!)!)
                }
            }
            if (txtCm.isSelected){
                if(txtCm.text == "0.000" || (txtCm.text?.isEmpty)!){
                    txtCm.text = "0."
                    CmSelected(Double(txtCm.text!)!)
                } else {
                    txtCm.text = txtCm.text! + "0"
                    CmSelected(Double(txtCm.text!)!)
                }
            }
            if(txtMm.isSelected)
            {
                if(txtMm.text == "0.000" || (txtMm.text?.isEmpty)!){
                    txtMm.text = "0."
                    MmSelected(Double(txtMm.text!)!)
                } else {
                    txtMm.text = txtMm.text! + "0"
                    MmSelected(Double(txtMm.text!)!)
                }
            }
            if(txtYard.isSelected)
            {
                if(txtYard.text == "0.000" || (txtYard.text?.isEmpty)!){
                    txtYard.text = "0."
                    YardSelected(Double(txtYard.text!)!)
                } else {
                    txtYard.text = txtYard.text! + "0"
                    YardSelected(Double(txtYard.text!)!)
                }
            }
            if(txtInch.isSelected)
            {
                if(txtInch.text == "0.000" || (txtInch.text?.isEmpty)!){
                    txtInch.text = "0."
                    InchSelected(Double(txtInch.text!)!)
                } else {
                    txtInch.text = txtInch.text! + "0"
                    InchSelected(Double(txtInch.text!)!)
                }
            }
        case ".":
            // .
            if(txtMetre.isSelected)
            { if(txtMetre.text?.contains("."))!
            {
                lblError.text = "Sorry, you can't add '.' twice!"
            } else {
                txtMetre.text = txtMetre.text! + "."
                MetreSelected(Double(txtMetre.text!)!)
                }
            }
            if(txtMile.isSelected)
            { if(txtMile.text?.contains("."))!
            {
                lblError.text = "Sorry, you can't add '.' twice!"
            } else {
                txtMile.text = txtMile.text! + "."
                MileSelected(Double(txtMile.text!)!)
                }
            }
            if(txtCm.isSelected)
            { if(txtCm.text?.contains("."))!
            {
                lblError.text = "Sorry, you can't add '.' twice!"
            } else {
                txtCm.text = txtCm.text! + "."
                CmSelected(Double(txtCm.text!)!)
                }
            }
            if(txtMm.isSelected)
            { if(txtMm.text?.contains("."))!
            {
                lblError.text = "Sorry, you can't add '.' twice!"
            } else {
                txtMm.text = txtMm.text! + "."
                MmSelected(Double(txtMm.text!)!)
                }
            }
        //
        case "-":
            // -
            lblError.text = "Sorry, this is not available."
        //
        case "DEL":
            // DEL
            if(txtMetre.isSelected)
            {
                txtMetre.text = String((txtMetre.text?.dropLast())!)
                if(txtMetre.text == "")
                {
                    txtMetre.text = "0.000"
                }
                MetreSelected(Double(txtMetre.text!)!)
            }
            
            if (txtMile.isSelected) {
                txtMile.text = String((txtMile.text?.dropLast())!)
                if(txtMile.text == "")
                {
                    txtMile.text = "0.000"
                }
                MileSelected(Double(txtMile.text!)!)
            }
            if (txtCm.isSelected){
                txtCm.text = String((txtCm.text?.dropLast())!)
                if(txtCm.text == "")
                {
                    txtCm.text = "0.000"
                }
                CmSelected(Double(txtCm.text!)!)
            }
            if(txtMm.isSelected)
            {
                txtMm.text = String((txtMm.text?.dropLast())!)
                if(txtMm.text == "")
                {
                    txtMm.text = "0.000"
                }
                MmSelected(Double(txtMm.text!)!)
            }
            if(txtYard.isSelected)
            {
                txtYard.text = String((txtYard.text?.dropLast())!)
                if(txtYard.text == "")
                {
                    txtYard.text = "0.000"
                }
                YardSelected(Double(txtYard.text!)!)
            }
            if(txtInch.isSelected)
            {
                txtInch.text = String((txtInch.text?.dropLast())!)
                if(txtInch.text == "")
                {
                    txtInch.text = "0.000"
                }
                InchSelected(Double(txtInch.text!)!)
            }
        case "CLEAR":
            txtMetre.text = "0.000"
            txtMile.isSelected = true
            txtCm.isSelected = false
            txtMm.isSelected = false
            txtYard.isSelected = false
            txtInch.isSelected = false
            lblError.text = ""
            MetreSelected(Double(txtMetre.text!)!)
            //
            
        default:
            break;
        }
    }
    
    //End of Keyboard
    //Extra Buttons
    @IBAction func btnSave_Touched(_ sender: Any) {
        
        _lengthHistoryArray = UserDefaults.standard.array(forKey: "lh") as! [String]
        
        let metre = txtMetre.text!
        let mile = txtMile.text!
        let cm = txtCm.text!
        let mm = txtMm.text!
        let yard = txtYard.text!
        let inch = txtInch.text!
        
        let stringConcat: String
        stringConcat = "Metre: " + metre + "\n"
            + "Mile: " + mile + "\n"
            + "Cm: " + cm + "\n"
            + "Mm: " + mm + "\n"
            + "Yard: " + yard + "\n"
            + "Inch: " + inch + "\n"
            + "\n" + "-----------"
        
        _lengthHistoryArray.append(stringConcat)
        UserDefaults.standard.set(_lengthHistoryArray, forKey: "lh")
        
    }
    
    @IBAction func btnBack_Touched(_ sender: Any) {
        performSegue(withIdentifier: "Id4_HomePage", sender: self)
    }
    @IBAction func btnHistory_Touched(_ sender: Any) {
        performSegue(withIdentifier: "Id_LengthHistory", sender: self)
    }
    private func LoadUserDefaults() -> Void{
        
        //let testUserDefaults = UserDefaults.standard.bool(forKey: "lh")
        let isValid:Bool
        isValid = UserDefaults.standard.object(forKey: "sh") != nil
        if isValid == true {
            _lengthHistoryArray = UserDefaults.standard.array(forKey: "lh") as! [String]
        } else {
            let stringConcat: String
            stringConcat = "Metre:Loading... " + "\n"
                + "Mile:Loading...  " + "\n"
                + "Cm:Loading...  " + "\n"
                + "Mm:Loading...  " + "\n"
                + "Yard:Loading...  " + "\n"
                + "Inch:Loading...  " + "\n"
                + "\n" + "-----------"
            
            _lengthHistoryArray.append(stringConcat)
            UserDefaults.standard.set(_lengthHistoryArray, forKey: "lh")
        }
    }
    
}
