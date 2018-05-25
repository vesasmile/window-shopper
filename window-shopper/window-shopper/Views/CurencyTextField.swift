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
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let curenczLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        curenczLbl.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        curenczLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        curenczLbl.layer.cornerRadius = 5.0
        curenczLbl.textAlignment = .center
        curenczLbl.clipsToBounds = true
        let formater = NumberFormatter()
        formater.numberStyle = .currency
        formater.locale = .current
        curenczLbl.text = formater.currencySymbol
        addSubview(curenczLbl)
    }

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
        clipsToBounds = true
        
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            textAlignment = .center
        }
    
    }
}

