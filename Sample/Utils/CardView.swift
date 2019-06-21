//
//  CardView.swift
//  SampleSwipeAnimation
//
//  Created by Apple on 09/06/19.
//  Copyright © 2019 khyati. All rights reserved.
//

import Foundation
import UIKit


import UIKit

public class CardView: UIView {
    
    @IBInspectable  var cornerRadius        : CGFloat     = 2
    
    public override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        layer.masksToBounds = true
      
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
