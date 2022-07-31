import UIKit

class NextScreenViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var passedIndex: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "current screen is next screen \(String(passedIndex ?? 100))"
    }
    
}

extension NextScreenViewController {
    
}
