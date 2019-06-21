//
//  ProductListTabelViewController.swift
//  Sample
//
//  Created by Apple on 21/06/19.
//  Copyright © 2019 khyati. All rights reserved.
//

import UIKit

class ProductListTableViewController: UIViewController {
    
    
    @IBOutlet weak var productTableView: UITableView!
    @IBOutlet weak var totalBudget: UILabel!

    var expense:Int = 0
    let productDetailsVM = ProductDetailsViewModel.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBillupdates()
        productTableView?.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductTableViewCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
         productDetailsVM.createProductList()
    }

    
    func setBillupdates(){
          totalBudget.text = self.expense.description + "/" + GlobalConstants.shared.finalBudget.description
    }

}

extension ProductListTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productDetailsVM.productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  self.productTableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell") as? ProductTableViewCell
        cell?.delegate = self
        cell?.configure(withProductDetails: productDetailsVM.productList[indexPath.row], tag: indexPath.row)
        return cell ?? UITableViewCell()
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

extension ProductListTableViewController: UpdateProductBillDelegate {

    func updateProductCount(count: Int, price: Int,index:Int) {
       let product = productDetailsVM.productList[index]
        if product.productCount > count{
            self.expense -= price
        }
        else {
           self.expense += price
        }
        setBillupdates()
        productTableView.reloadData()
        productDetailsVM.updateProductCount(withIndex: index, count: count)
    }
    
    
}
