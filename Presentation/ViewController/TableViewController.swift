//
//  TableViewController.swift
//  table
//
//  Created by Teppei Sasaki on 2022/07/29.
//

import Foundation
import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var table:UITableView!
    
    private let imgString: String = "image"
    private let dateList: Array<String> = [
        "2022/08/01", "2022/08/02",
        "2022/08/03", "2022/08/04",
        "2022/08/05", "2022/08/06",
        "2022/08/07", "2022/08/08",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("DEBUG view didload")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dateList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "custom_cell", for: indexPath)
        
        let img = UIImage(named: imgString)
        let imgView = cell.viewWithTag(1) as! UIImageView
        imgView.image = img
        
        let i = indexPath.row
        
        let titleLabel = cell.viewWithTag(2) as! UILabel
        titleLabel.text = "this task's number is \(i)"

        let dateLabel = cell.viewWithTag(3) as! UILabel
        dateLabel.text = dateList[indexPath.row]
        
        return cell
    }

    func tableView(_ table: UITableView,
                       heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 70.0
        }
}
