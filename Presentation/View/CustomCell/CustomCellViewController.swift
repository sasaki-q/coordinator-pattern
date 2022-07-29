import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBAction func tap(_ sender: Any) {
        print("on tapped")
    }
}
