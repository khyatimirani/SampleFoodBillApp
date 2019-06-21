//
//  ProductTableViewCell.swift
//  Sample
//
//  Created by Apple on 21/06/19.
//  Copyright © 2019 khyati. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productCountLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    
    var productCount = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

    func configure(){
        
    }
    
    @IBAction func procutAddStepper(_ sender: UIStepper) {
        self.productCount += 1
    }
    
}
