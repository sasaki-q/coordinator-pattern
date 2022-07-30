import UIKit

class NextScreenViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "current screen is next screen"
    }
    
}

extension NextScreenViewController {
    
}
