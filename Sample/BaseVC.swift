

import UIKit

public class BaseVC: UIViewController {
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    func hasBackButton()->Bool{
        return false
    }
    
    
   public func initialize(){
        self.navigationController?.navigationBar.setValue(true, forKey: "hidesShadow")
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barTintColor =  UIColor.blue
        self.navigationController?.navigationBar.backgroundColor  = UIColor.white
        navigationController?.navigationBar.barStyle = .black
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.black]
        if hasBackButton(){
            createBackButton()
        }
    }
    
    /**
     This method can be create back button.
     */
    func createBackButton(){
        let image = UIImage(named: "back")
        let back = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(back(_:)))
        back.tintColor = UIColor.white
        navigationItem.leftBarButtonItem = back
    }
    deinit {
        print("\(String(describing: self)) is deallocated" )
    }
    
    @IBAction func back(_ sender: Any?){
        self.dismiss(animated: true, completion: nil)
    }
}


