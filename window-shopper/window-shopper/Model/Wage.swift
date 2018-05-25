//
//  Wage.swift
//  window-shopper
//
//  Created by Velibor Popovic on 5/23/18.
//  Copyright © 2018 Velibor Popovic. All rights reserved.
//

import Foundation

class Wage  {
    class func getHours (forWage wage: Double, andPrice price: Double) -> Int{
       return Int(ceil(price / wage))
    
    }
}
