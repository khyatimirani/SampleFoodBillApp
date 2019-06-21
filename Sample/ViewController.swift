//
//  ViewController.swift
//  Sample
//
//  Created by Apple on 18/06/19.
//  Copyright © 2019 khyati. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var greetingsLabel: UILabel!
    @IBOutlet weak var employeeCountTextField: UITextField!
    @IBOutlet weak var perEmployeeBudget: UITextField!
    
    @IBOutlet weak var finalBudget: UILabel!
    
    var emplooyesCount: Double = 0
    var budgetCount: Double = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setUpUI(){
        finalBudget.text = "Rs. 0.0"
        employeeCountTextField.delegate = self
        perEmployeeBudget.delegate = self
        greetingsLabel.text = "Hi Khyati, Welcome Back to BillTrim!\nPlease enter the order deatils to proceed further"
        
        
    }
    
    
    @IBAction func nextAction(_ sender: UIButton) {
        calculateBudget(employeesCount: emplooyesCount, budget: budgetCount)
    }
    
    func calculateBudget(employeesCount: Double, budget: Double){
        let finalBudgetCount = employeesCount * budgetCount
        GlobalConstants.shared.finalBudget = finalBudgetCount
        finalBudget.text = "Rs. \(finalBudgetCount)"
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        emplooyesCount = Double(employeeCountTextField?.text ?? "0.0") ?? 0
        budgetCount = Double(perEmployeeBudget?.text ?? "0.0") ?? 0
        calculateBudget(employeesCount: emplooyesCount, budget: budgetCount)
        return true
    }
    
}
