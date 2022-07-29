import UIKit

class TableViewController: UIViewController {
    @IBOutlet var tableView:UITableView!
    
    private let imgString: String = "image"
    private let dateList: Array<String> = [
        "2022/08/01", "2022/08/02",
        "2022/08/03", "2022/08/04",
        "2022/08/05", "2022/08/06",
        "2022/08/07", "2022/08/08",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
    }
}

extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dateList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        
        cell.imgView?.image = UIImage(named: imgString)
        
        let i = indexPath.row
        cell.titleLabel?.text = "this task number is \(i)"
        cell.dateLabel?.text = dateList[i]
        
        return cell
    }

    func tableView(_ table: UITableView,
                       heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 70.0
        }
}
