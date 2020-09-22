//
//  ViewController.swift
//  Autolayout
//
//  Created by Mário Galvao on 21/09/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var labelValue: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    private var tableCells = ["Suspendisse ut posuere turpis. Phasellus dictum pulvinar suscipit. Nullam congue, lectus ut elementum consectetur, massa tortor auctor massa, ut ullamcorper massa velit quis mi.", "Mauris molestie rutrum quam, eget rutrum nulla vulputate vitae."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.reloadData()
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        cell.labelCell.text = tableCells[indexPath.row]
        return cell
    }
    
}
