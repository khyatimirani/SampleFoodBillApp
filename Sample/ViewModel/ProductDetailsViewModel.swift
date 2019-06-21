//
//  ProductDetailsViewModel.swift
//  Sample
//
//  Created by Apple on 21/06/19.
//  Copyright © 2019 khyati. All rights reserved.
//

import Foundation

class ProductDetailsViewModel {
    
    static let shared = ProductDetailsViewModel()
    
    var productList: [ProductDetails] = []
    
    func createProductList(){
      let product1 =  ProductDetails.init(productName: "Hakka Noodels", productQuantity: "1 plate", productCount: 0, productPrice: 250)
      let product2 = ProductDetails.init(productName: "Fried Rice", productQuantity: "1 plate", productCount: 0, productPrice: 280)
      let product3 = ProductDetails.init(productName: "Veg Manchurian", productQuantity: "8 pcs", productCount: 0, productPrice: 200)
      let product4 = ProductDetails.init(productName: "Spring Roll", productQuantity: "4 pcs", productCount: 0, productPrice: 300)
        
        productList = [product1, product2, product3, product4]
    }
    
    
}
