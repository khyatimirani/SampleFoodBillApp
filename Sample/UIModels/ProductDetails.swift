//
//  ProductDetails.swift
//  Sample
//
//  Created by Apple on 21/06/19.
//  Copyright © 2019 khyati. All rights reserved.
//

import Foundation


class ProductDetails{
    
    var productName: String
    var productQuantity: String
    var productCount: Int
    var productPrice: Int
    
    init(productName:String,productQuantity: String,productCount: Int, productPrice: Int){
            self.productName = productName
            self.productQuantity = productQuantity
            self.productCount = productCount
            self.productPrice = productPrice
    }
    
}

