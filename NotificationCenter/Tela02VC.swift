






import UIKit

class Tela02VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func configObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(updateBackGroundColor(notification:)), name: .changeColorScreen02, object: nil)
    }
    
    @objc func updateBackGroundColor(notification: NSNotification){
        self.view.backgroundColor = notification.object as? UIColor
        
    }

    @IBAction func tappedChangeColorButton(_ sender: UIButton) {
        
        
            NotificationCenter.default.post(name: .changeColorScreen01 , object: UIColor.cyan)
            self.updateBackGroundColor(notification: NSNotification(name: .changeColorScreen02, object: UIColor.cyan))
    }
    
    
}



