//
//  ProductTableViewCell.swift
//  Sample
//
//  Created by Apple on 21/06/19.
//  Copyright © 2019 khyati. All rights reserved.
//

import UIKit

protocol UpdateProductBillDelegate:class{
    func updateProductCount(count:Int,price:Int,index:Int)
}

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productCountLabel: UILabel!
    @IBOutlet weak var productUnit: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    var cellData: ProductDetails?
    weak var delegate: UpdateProductBillDelegate?
    var index = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

    func configure(withProductDetails: ProductDetails,tag:Int){
        self.index = tag
        self.cellData = withProductDetails
        productNameLabel.text = cellData?.productName
        productUnit.text = cellData?.productQuantity
        productCountLabel.text = cellData?.productCount.description
        productPriceLabel.text = cellData?.productPrice.description
    }
    
    @IBAction func procutAddStepper(_ sender: UIStepper) {
        productCountLabel.text = Int(sender.value).description
        delegate?.updateProductCount(count: Int(sender.value), price:cellData?.productPrice ?? 0, index: self.index)
       
    }
    
}
