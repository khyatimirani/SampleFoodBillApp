//
//  CategoryListViewController.swift
//  Sample
//
//  Created by Apple on 21/06/19.
//  Copyright © 2019 khyati. All rights reserved.
//

import UIKit

class CategoryListViewController: UIViewController {

    
    @IBOutlet weak var totalBudget: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalBudget.text = "0 / " + GlobalConstants.shared.finalBudget.description
        print("In CategoryListViewController")
    }
    
    
    @IBAction func backAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
   

}
