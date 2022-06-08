








import UIKit

class Tela01VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configObserver()
    }

    
    func configObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(updateBackGroundColor(notification:)), name: .changeColorScreen01, object: nil)
    }
    
    @objc func updateBackGroundColor(notification: NSNotification){
        self.view.backgroundColor = notification.object as? UIColor
        
    }
    
    @IBAction func tappedChangeColorButton(_ sender: UIButton) {
    
        NotificationCenter.default.post(name: .changeColorScreen02 , object: UIColor.red)
        self.updateBackGroundColor(notification: NSNotification(name: .changeColorScreen02, object: UIColor.red))
        
        
    }
    
}
 

extension Notification.Name {
    static let changeColorScreen02 = Notification.Name("ChangeColorScreen02")
    static let changeColorScreen01 = Notification.Name("ChangeColorScreen01")

}
