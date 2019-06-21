//
//  CategoryListViewController.swift
//  Sample
//
//  Created by Apple on 21/06/19.
//  Copyright © 2019 khyati. All rights reserved.
//

import UIKit

class CategoryListViewController: BaseVC {

    
    @IBOutlet weak var totalBudget: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func initialize() {
        super.initialize()
        totalBudget.text = "0 / " + GlobalConstants.shared.finalBudget.description
        print("In CategoryListViewController")
    }
    
    override func hasBackButton() -> Bool {
        return true
    }
    
    override func back(_ sender: Any?) {
        self.dismiss(animated: true, completion: nil)
    }

    
    
   

}
