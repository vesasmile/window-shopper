//
//  CurencyTextField.swift
//  window-shopper
//
//  Created by Velibor Popovic on 5/21/18.
//  Copyright © 2018 Velibor Popovic. All rights reserved.
//

import UIKit

@IBDesignable

class CurencyTextField: UITextField {

    override func prepareForInterfaceBuilder() {
        customDesign()
    }
    
    override func awakeFromNib() {
       super.awakeFromNib()
        customDesign()
        
        }
    
    func customDesign (){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            textAlignment = .center
        }
    
    }
}

