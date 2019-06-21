

import UIKit

public class BaseVC: UIViewController {
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        if hasNavigationControllerAtached() {
            initializeNavigationController()
        }
        
    }
    
    /**
     This method is used to enable/disable navigationController
     override this method - is set to YES , enable the navigationController
     default is NO - disable the navigationController
     */
    func hasNavigationControllerAtached() -> Bool {
        return false
    }
    
    
    /**
     This method can be used to enable/disable back button in UI
     ## Important Notes ##
     override this method to customize behavior
     Default behaviour is `false`, so no back buttons
     */
    func hasBackButton()->Bool{
        return false
    }
    
    /**
     This method can be used for initialzing the UI components
     ## Important Notes ##
     Do not call this method explicitly, it called in `viewDidLoad`
     When you override `viewDidLoad` make sure that you call the super class method
     */
    func initializeNavigationController(){
        self.navigationController?.navigationBar.setValue(true, forKey: "hidesShadow")
        self.navigationController?.navigationBar.isTranslucent = false
        //  self.navigationController?.navigationBar.barTintColor = Color.primary
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        if hasBackButton(){
            let back = UIBarButtonItem(image: UIImage(named: "back", in: nil, compatibleWith: nil)
                , style: .plain, target: self, action: #selector(back(_:)))
            back.tintColor = UIColor.white
            navigationItem.leftBarButtonItem = back
        }
    }
   
    deinit {
        print("\(String(describing: self)) is deallocated" )
    }
    
    @IBAction func back(_ sender: Any?){
        self.dismiss(animated: true, completion: nil)
}
}


