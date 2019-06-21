//
//  BorderedButton.swift
//  SampleSwipeAnimation
//
//  Created by Apple on 09/06/19.
//  Copyright © 2019 khyati. All rights reserved.
//

import Foundation
import UIKit


public class BorderedButton : UIButton{
    
    @IBInspectable var borderColor:UIColor = UIColor.clear
    @IBInspectable var cornerRadius:CGFloat = 0
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        layer.borderWidth = 1
        layer.borderColor = borderColor.cgColor
        layer.cornerRadius = cornerRadius
        //self.setTitleColor(borderColor, for: .normal)
    }
}
