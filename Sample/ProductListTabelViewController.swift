//
//  ProductListTabelViewController.swift
//  Sample
//
//  Created by Apple on 21/06/19.
//  Copyright © 2019 khyati. All rights reserved.
//

import UIKit

class ProductListTabelViewController: BaseVC {
    
    
    @IBOutlet weak var productTableView: UITableView!
     @IBOutlet weak var totalBudget: UILabel!

    
    let productDetailsVM = ProductDetailsViewModel.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
         productDetailsVM.createProductList()
    }

    
    override func initialize() {
        super.initialize()
       
        totalBudget.text = "0 / " + GlobalConstants.shared.finalBudget.description
        productTableView?.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductTableViewCell")
      
    }
    
    override func hasBackButton() -> Bool {
        return true
    }


}

extension ProductListTabelViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productDetailsVM.productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  self.productTableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell")
        return cell ?? UITableViewCell()
        
    }
    
    
}
