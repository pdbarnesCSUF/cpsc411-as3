//
//  Model.swift
//  cpsc411-as3
//
//  Created by CampusUser on 3/13/17.
//  Copyright © 2017 pdbarnes. All rights reserved.
//

import Foundation

class CalcData
{
    public static var shared:CalcData = CalcData()
    
    init()
    {
        price = 0;
        discount_flat = 0;
        discount_pct = 0;
        discount_pct_other = 0;
        tax_pct = 0;
        cost_original = 0;
        cost_discounted = 0;
        cost_saved = 0;
    }
    //input---
    public var price:Float
    public var discount_flat: Float
    //input pcts as out of one (ex: 99% = 0.99)
    public var discount_pct: Float
    public var discount_pct_other: Float
    public var tax_pct: Float
    
    //output---
    public var cost_original: Float
    public var cost_discounted: Float
    //saved amount (original - discounted)
    public var cost_saved: Float
    
    //calc
    public func Calc()
    {
        let tax = price * tax_pct
        cost_original = price + tax
        cost_discounted = price - (price * discount_pct) - (price * discount_pct_other) - discount_flat + tax
        cost_saved = cost_original - cost_discounted
    }
}
