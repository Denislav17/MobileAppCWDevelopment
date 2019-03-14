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
    @IBOutlet weak var lblError: UILabel!
    @IBOutlet weak var Keyboard: UIView!
    
    //end of textfields init()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        txtGallon.isSelected = false
        txtLitre.isSelected = false
        txtPint.isSelected = false
        txtFluidOunce.isSelected = false
        txtMl.isSelected = false
        
        Keyboard.isHidden = true
    }
    
    //Selected Section
    @IBAction func txtGallon_Selected(_ sender: Any) {
        txtGallon.isSelected = true
        txtGallon.backgroundColor = UIColor.lightGray
        txtGallon.textColor = UIColor.white
        Keyboard.isHidden = false
        
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
        Keyboard.isHidden = false
        
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
        Keyboard.isHidden = false
        
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
        Keyboard.isHidden = false
        
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
        Keyboard.isHidden = false
        
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
        txtFluidOunce.text = String(format:"%.2f", ml/28.413)
    }
    //End of Calc section
    //Keyboard
    @IBAction func keyboardButton_Tapped(_ sender: UIButton) {
        switch (sender.titleLabel?.text) {
        case "1":
            // 1
            if(txtGallon.isSelected)
            {
                if(txtGallon.text == "0") {
                    txtGallon.text = "1"
                    GallonSelected(Double(txtGallon.text!)!)
                } else {
                    txtGallon.text = txtGallon.text! + "1"
                    GallonSelected(Double(txtGallon.text!)!)
                }
            }
            if (txtLitre.isSelected) {
                if(txtLitre.text == "0"){
                    txtLitre.text = "1"
                    LitreSelected(Double(txtLitre.text!)!)
                } else {
                    txtLitre.text = txtLitre.text! + "1"
                    LitreSelected(Double(txtLitre.text!)!)
                }
            }
            if (txtPint.isSelected){
                if(txtPint.text == "0"){
                    txtPint.text = "1"
                    PintSelected(Double(txtPint.text!)!)
                } else {
                    txtPint.text = txtPint.text! + "1"
                    PintSelected(Double(txtPint.text!)!)
                }
            }
            if(txtFluidOunce.isSelected)
            {
                if(txtFluidOunce.text == "0"){
                    txtFluidOunce.text = "1"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                } else {
                    txtFluidOunce.text = txtFluidOunce.text! + "1"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                }
            }
            if(txtMl.isSelected)
            {
                if(txtMl.text == "0"){
                    txtMl.text = "1"
                    MlSelected(Double(txtMl.text!)!)
                } else {
                    txtMl.text = txtMl.text! + "1"
                    MlSelected(Double(txtMl.text!)!)
                }
            }
        case "2":
            // 2
            if(txtGallon.isSelected)
            {
                if(txtGallon.text == "0") {
                    txtGallon.text = "2"
                    GallonSelected(Double(txtGallon.text!)!)
                } else {
                    txtGallon.text = txtGallon.text! + "2"
                    GallonSelected(Double(txtGallon.text!)!)
                }
            }
            if (txtLitre.isSelected) {
                if(txtLitre.text == "0"){
                    txtLitre.text = "2"
                    LitreSelected(Double(txtLitre.text!)!)
                } else {
                    txtLitre.text = txtLitre.text! + "2"
                    LitreSelected(Double(txtLitre.text!)!)
                }
            }
            if (txtPint.isSelected){
                if(txtPint.text == "0"){
                    txtPint.text = "2"
                    PintSelected(Double(txtPint.text!)!)
                } else {
                    txtPint.text = txtPint.text! + "2"
                    PintSelected(Double(txtPint.text!)!)
                }
            }
            if(txtFluidOunce.isSelected)
            {
                if(txtFluidOunce.text == "0"){
                    txtFluidOunce.text = "2"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                } else {
                    txtFluidOunce.text = txtFluidOunce.text! + "2"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                }
            }
            if(txtMl.isSelected)
            {
                if(txtMl.text == "0"){
                    txtMl.text = "2"
                    MlSelected(Double(txtMl.text!)!)
                } else {
                    txtMl.text = txtMl.text! + "2"
                    MlSelected(Double(txtMl.text!)!)
                }
            }
        case "3":
            // 3
            if(txtGallon.isSelected)
            {
                if(txtGallon.text == "0") {
                    txtGallon.text = "3"
                    GallonSelected(Double(txtGallon.text!)!)
                } else {
                    txtGallon.text = txtGallon.text! + "3"
                    GallonSelected(Double(txtGallon.text!)!)
                }
            }
            if (txtLitre.isSelected) {
                if(txtLitre.text == "0"){
                    txtLitre.text = "3"
                    LitreSelected(Double(txtLitre.text!)!)
                } else {
                    txtLitre.text = txtLitre.text! + "3"
                    LitreSelected(Double(txtLitre.text!)!)
                }
            }
            if (txtPint.isSelected){
                if(txtPint.text == "0"){
                    txtPint.text = "3"
                    PintSelected(Double(txtPint.text!)!)
                } else {
                    txtPint.text = txtPint.text! + "3"
                    PintSelected(Double(txtPint.text!)!)
                }
            }
            if(txtFluidOunce.isSelected)
            {
                if(txtFluidOunce.text == "0"){
                    txtFluidOunce.text = "3"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                } else {
                    txtFluidOunce.text = txtFluidOunce.text! + "3"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                }
            }
            if(txtMl.isSelected)
            {
                if(txtMl.text == "0"){
                    txtMl.text = "3"
                    MlSelected(Double(txtMl.text!)!)
                } else {
                    txtMl.text = txtMl.text! + "3"
                    MlSelected(Double(txtMl.text!)!)
                }
            }
        case "4":
            // 4
            if(txtGallon.isSelected)
            {
                if(txtGallon.text == "0") {
                    txtGallon.text = "4"
                    GallonSelected(Double(txtGallon.text!)!)
                } else {
                    txtGallon.text = txtGallon.text! + "4"
                    GallonSelected(Double(txtGallon.text!)!)
                }
            }
            if (txtLitre.isSelected) {
                if(txtLitre.text == "0"){
                    txtLitre.text = "4"
                    LitreSelected(Double(txtLitre.text!)!)
                } else {
                    txtLitre.text = txtLitre.text! + "4"
                    LitreSelected(Double(txtLitre.text!)!)
                }
            }
            if (txtPint.isSelected){
                if(txtPint.text == "0"){
                    txtPint.text = "4"
                    PintSelected(Double(txtPint.text!)!)
                } else {
                    txtPint.text = txtPint.text! + "4"
                    PintSelected(Double(txtPint.text!)!)
                }
            }
            if(txtFluidOunce.isSelected)
            {
                if(txtFluidOunce.text == "0"){
                    txtFluidOunce.text = "4"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                } else {
                    txtFluidOunce.text = txtFluidOunce.text! + "4"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                }
            }
            if(txtMl.isSelected)
            {
                if(txtMl.text == "0"){
                    txtMl.text = "4"
                    MlSelected(Double(txtMl.text!)!)
                } else {
                    txtMl.text = txtMl.text! + "4"
                    MlSelected(Double(txtMl.text!)!)
                }
            }
        case "5":
            // 5
            if(txtGallon.isSelected)
            {
                if(txtGallon.text == "0") {
                    txtGallon.text = "5"
                    GallonSelected(Double(txtGallon.text!)!)
                } else {
                    txtGallon.text = txtGallon.text! + "5"
                    GallonSelected(Double(txtGallon.text!)!)
                }
            }
            if (txtLitre.isSelected) {
                if(txtLitre.text == "0"){
                    txtLitre.text = "5"
                    LitreSelected(Double(txtLitre.text!)!)
                } else {
                    txtLitre.text = txtLitre.text! + "5"
                    LitreSelected(Double(txtLitre.text!)!)
                }
            }
            if (txtPint.isSelected){
                if(txtPint.text == "0"){
                    txtPint.text = "5"
                    PintSelected(Double(txtPint.text!)!)
                } else {
                    txtPint.text = txtPint.text! + "5"
                    PintSelected(Double(txtPint.text!)!)
                }
            }
            if(txtFluidOunce.isSelected)
            {
                if(txtFluidOunce.text == "0"){
                    txtFluidOunce.text = "5"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                } else {
                    txtFluidOunce.text = txtFluidOunce.text! + "5"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                }
            }
            if(txtMl.isSelected)
            {
                if(txtMl.text == "0"){
                    txtMl.text = "5"
                    MlSelected(Double(txtMl.text!)!)
                } else {
                    txtMl.text = txtMl.text! + "5"
                    MlSelected(Double(txtMl.text!)!)
                }
            }
        case "6":
            // 6
            if(txtGallon.isSelected)
            {
                if(txtGallon.text == "0") {
                    txtGallon.text = "6"
                    GallonSelected(Double(txtGallon.text!)!)
                } else {
                    txtGallon.text = txtGallon.text! + "6"
                    GallonSelected(Double(txtGallon.text!)!)
                }
            }
            if (txtLitre.isSelected) {
                if(txtLitre.text == "0"){
                    txtLitre.text = "6"
                    LitreSelected(Double(txtLitre.text!)!)
                } else {
                    txtLitre.text = txtLitre.text! + "6"
                    LitreSelected(Double(txtLitre.text!)!)
                }
            }
            if (txtPint.isSelected){
                if(txtPint.text == "0"){
                    txtPint.text = "6"
                    PintSelected(Double(txtPint.text!)!)
                } else {
                    txtPint.text = txtPint.text! + "6"
                    PintSelected(Double(txtPint.text!)!)
                }
            }
            if(txtFluidOunce.isSelected)
            {
                if(txtFluidOunce.text == "0"){
                    txtFluidOunce.text = "6"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                } else {
                    txtFluidOunce.text = txtFluidOunce.text! + "6"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                }
            }
            if(txtMl.isSelected)
            {
                if(txtMl.text == "0"){
                    txtMl.text = "6"
                    MlSelected(Double(txtMl.text!)!)
                } else {
                    txtMl.text = txtMl.text! + "6"
                    MlSelected(Double(txtMl.text!)!)
                }
            }
        case "7":
            // 7
            if(txtGallon.isSelected)
            {
                if(txtGallon.text == "0") {
                    txtGallon.text = "7"
                    GallonSelected(Double(txtGallon.text!)!)
                } else {
                    txtGallon.text = txtGallon.text! + "7"
                    GallonSelected(Double(txtGallon.text!)!)
                }
            }
            if (txtLitre.isSelected) {
                if(txtLitre.text == "0"){
                    txtLitre.text = "7"
                    LitreSelected(Double(txtLitre.text!)!)
                } else {
                    txtLitre.text = txtLitre.text! + "7"
                    LitreSelected(Double(txtLitre.text!)!)
                }
            }
            if (txtPint.isSelected){
                if(txtPint.text == "0"){
                    txtPint.text = "7"
                    PintSelected(Double(txtPint.text!)!)
                } else {
                    txtPint.text = txtPint.text! + "7"
                    PintSelected(Double(txtPint.text!)!)
                }
            }
            if(txtFluidOunce.isSelected)
            {
                if(txtFluidOunce.text == "0"){
                    txtFluidOunce.text = "7"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                } else {
                    txtFluidOunce.text = txtFluidOunce.text! + "7"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                }
            }
            if(txtMl.isSelected)
            {
                if(txtMl.text == "0"){
                    txtMl.text = "7"
                    MlSelected(Double(txtMl.text!)!)
                } else {
                    txtMl.text = txtMl.text! + "7"
                    MlSelected(Double(txtMl.text!)!)
                }
            }
        case "8":
            // 8
            if(txtGallon.isSelected)
            {
                if(txtGallon.text == "0") {
                    txtGallon.text = "8"
                    GallonSelected(Double(txtGallon.text!)!)
                } else {
                    txtGallon.text = txtGallon.text! + "8"
                    GallonSelected(Double(txtGallon.text!)!)
                }
            }
            if (txtLitre.isSelected) {
                if(txtLitre.text == "0"){
                    txtLitre.text = "8"
                    LitreSelected(Double(txtLitre.text!)!)
                } else {
                    txtLitre.text = txtLitre.text! + "8"
                    LitreSelected(Double(txtLitre.text!)!)
                }
            }
            if (txtPint.isSelected){
                if(txtPint.text == "0"){
                    txtPint.text = "8"
                    PintSelected(Double(txtPint.text!)!)
                } else {
                    txtPint.text = txtPint.text! + "8"
                    PintSelected(Double(txtPint.text!)!)
                }
            }
            if(txtFluidOunce.isSelected)
            {
                if(txtFluidOunce.text == "0"){
                    txtFluidOunce.text = "8"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                } else {
                    txtFluidOunce.text = txtFluidOunce.text! + "8"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                }
            }
            if(txtMl.isSelected)
            {
                if(txtMl.text == "0"){
                    txtMl.text = "8"
                    MlSelected(Double(txtMl.text!)!)
                } else {
                    txtMl.text = txtMl.text! + "8"
                    MlSelected(Double(txtMl.text!)!)
                }
            }
        case "9":
            // 9
            if(txtGallon.isSelected)
            {
                if(txtGallon.text == "0") {
                    txtGallon.text = "9"
                    GallonSelected(Double(txtGallon.text!)!)
                } else {
                    txtGallon.text = txtGallon.text! + "9"
                    GallonSelected(Double(txtGallon.text!)!)
                }
            }
            if (txtLitre.isSelected) {
                if(txtLitre.text == "0"){
                    txtLitre.text = "9"
                    LitreSelected(Double(txtLitre.text!)!)
                } else {
                    txtLitre.text = txtLitre.text! + "9"
                    LitreSelected(Double(txtLitre.text!)!)
                }
            }
            if (txtPint.isSelected){
                if(txtPint.text == "0"){
                    txtPint.text = "9"
                    PintSelected(Double(txtPint.text!)!)
                } else {
                    txtPint.text = txtPint.text! + "9"
                    PintSelected(Double(txtPint.text!)!)
                }
            }
            if(txtFluidOunce.isSelected)
            {
                if(txtFluidOunce.text == "0"){
                    txtFluidOunce.text = "9"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                } else {
                    txtFluidOunce.text = txtFluidOunce.text! + "9"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                }
            }
            if(txtMl.isSelected)
            {
                if(txtMl.text == "0"){
                    txtMl.text = "9"
                    MlSelected(Double(txtMl.text!)!)
                } else {
                    txtMl.text = txtMl.text! + "9"
                    MlSelected(Double(txtMl.text!)!)
                }
            }
        case "0":
            // 0
            if(txtGallon.isSelected)
            {
                if(txtGallon.text == "0") {
                    txtGallon.text = "0"
                    GallonSelected(Double(txtGallon.text!)!)
                } else {
                    txtGallon.text = txtGallon.text! + "0"
                    GallonSelected(Double(txtGallon.text!)!)
                }
            }
            if (txtLitre.isSelected) {
                if(txtLitre.text == "0"){
                    txtLitre.text = "0"
                    LitreSelected(Double(txtLitre.text!)!)
                } else {
                    txtLitre.text = txtLitre.text! + "0"
                    LitreSelected(Double(txtLitre.text!)!)
                }
            }
            if (txtPint.isSelected){
                if(txtPint.text == "0"){
                    txtPint.text = "0"
                    PintSelected(Double(txtPint.text!)!)
                } else {
                    txtPint.text = txtPint.text! + "0"
                    PintSelected(Double(txtPint.text!)!)
                }
            }
            if(txtFluidOunce.isSelected)
            {
                if(txtFluidOunce.text == "0"){
                    txtFluidOunce.text = "0"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                } else {
                    txtFluidOunce.text = txtFluidOunce.text! + "0"
                    FluidOunceSelected(Double(txtFluidOunce.text!)!)
                }
            }
            if(txtMl.isSelected)
            {
                if(txtMl.text == "0"){
                    txtMl.text = "0"
                    MlSelected(Double(txtMl.text!)!)
                } else {
                    txtMl.text = txtMl.text! + "0"
                    MlSelected(Double(txtMl.text!)!)
                }
            }
        case ".":
            // .
            if(txtGallon.isSelected)
            { if((txtGallon.text?.contains("."))! || (txtGallon.text?.isEmpty)!)
            {
                lblError.text = "Sorry, you can't add this now!"
            } else {
                txtGallon.text = txtGallon.text! + "."
                GallonSelected(Double(txtGallon.text!)!)
                }
            }
            if(txtLitre.isSelected)
            { if((txtLitre.text?.contains("."))! || (txtLitre.text?.isEmpty)!)
            {
                lblError.text = "Sorry, you can't add this now!"
            } else {
                txtLitre.text = txtLitre.text! + "."
                LitreSelected(Double(txtLitre.text!)!)
                }
            }
            if(txtPint.isSelected)
            { if((txtPint.text?.contains("."))! || (txtPint.text?.isEmpty)!)
            {
                lblError.text = "Sorry, you can't add this now!"
            } else {
                txtPint.text = txtPint.text! + "."
                PintSelected(Double(txtPint.text!)!)
                }
            }
            if(txtFluidOunce.isSelected)
            { if((txtFluidOunce.text?.contains("."))! || (txtFluidOunce.text?.isEmpty)!)
            {
                lblError.text = "Sorry, you can't add this now!"
                lblError.textColor = UIColor.brown
            } else {
                txtFluidOunce.text = txtFluidOunce.text! + "."
                FluidOunceSelected(Double(txtFluidOunce.text!)!)
                }
            }
            if(txtMl.isSelected)
            { if((txtMl.text?.contains("."))! || (txtMl.text?.isEmpty)!)
            {
                lblError.text = "Sorry, you can't add this now!"
            } else {
                txtMl.text = txtMl.text! + "."
                MlSelected(Double(txtMl.text!)!)
                }
            }
        //
        case "-":
            // -
            lblError.text = "Sorry, this is not available."
        //
        case "DEL":
            // DEL
            if(txtGallon.isSelected)
            {
                txtGallon.text = String((txtGallon.text?.dropLast())!)
                if(txtGallon.text == "")
                {
                    txtGallon.text = "0"
                }
                GallonSelected(Double(txtGallon.text!)!)
            }
            
            if (txtLitre.isSelected) {
                txtLitre.text = String((txtLitre.text?.dropLast())!)
                if(txtLitre.text == "")
                {
                    txtLitre.text = "0"
                }
                LitreSelected(Double(txtLitre.text!)!)
            }
            if (txtPint.isSelected){
                txtPint.text = String((txtPint.text?.dropLast())!)
                if(txtPint.text == "")
                {
                    txtPint.text = "0"
                }
                PintSelected(Double(txtPint.text!)!)
            }
            if(txtFluidOunce.isSelected)
            {
                txtFluidOunce.text = String((txtFluidOunce.text?.dropLast())!)
                if(txtFluidOunce.text == "")
                {
                    txtFluidOunce.text = "0"
                }
                FluidOunceSelected(Double(txtFluidOunce.text!)!)
            }
            if(txtMl.isSelected)
            {
                txtMl.text = String((txtMl.text?.dropLast())!)
                if(txtMl.text == "")
                {
                    txtMl.text = "0"
                }
                MlSelected(Double(txtMl.text!)!)
            }
        case "CLEAR":
            txtGallon.text = "0"
            txtLitre.isSelected = true
            txtPint.isSelected = false
            txtFluidOunce.isSelected = false
            txtMl.isSelected = false
            lblError.text = ""
            GallonSelected(Double(txtGallon.text!)!)
            //
            
        default:
            break;
        }
    }
    //End of keyboard
    
    
    //Extra buttons
    @IBAction func btnBack_Touched(_ sender: Any) {
        performSegue(withIdentifier: "Id5_HomePage", sender: self)
        
    }
    

}
