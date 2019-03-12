//
//  Weight.swift
//  MobileAppCWDennis
//
//  Created by Denislav Rofetov on 12/03/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import Foundation

public class Weight {
    
    var _kilograms: Double
    var _grams: Double
    var _ounces: Double
    var _pounds: Double
    var _stone: Double
    var _pound: Double
    
    init(kg:Double,gr:Double,ounc:Double,pounds:Double,stone:Double,pound:Double){
        _kilograms = kg
        _grams = gr
        _ounces = ounc
        _pounds = pounds
        _stone = stone
        _pound = pound
    }
    
    //Setters
    public func SetKilograms(kg:Double){
        _kilograms = kg
    }
    public func SetGrams(gr:Double){
        _grams = gr
    }
    public func SetOunces(ounc:Double){
        _ounces = ounc
    }
    public func SetPounds(pounds:Double){
        _pounds = pounds
    }
    public func SetStone(stone:Double){
        _stone = stone
    }
    public func SetPound(pound:Double){
        _pound = pound
    }
    //End Setters
    //Getters
    public func GetKilograms() -> Double{
        return _kilograms
    }
    public func GetGrams() -> Double{
        return _grams
    }
    public func GetOunces() -> Double{
        return _ounces
    }
    public func GetPounds() -> Double{
        return _pounds
    }
    public func GetStone() -> Double{
        return _stone
    }
    public func GetPound() -> Double{
        return _pound
    }
    //End Getters
    
}
