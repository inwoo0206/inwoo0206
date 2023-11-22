//
//  SecondViewController.swift
//  final_project
//
//  Created by 권인우 on 11/22/23.
//

import UIKit

class SecondViewController: UIViewController  {
    
    @IBOutlet weak var tableview: UITableView!
    
    let elements = ["갑상선암","담낭&담도암","대장암","유방암","자궁경부암","전립선암","췌장암","위암","폐암","간암"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension SecondViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        cell.cencerLbl.text = elements[indexPath.row]
        cell.cencerImage.image = UIImage(named: elements[indexPath.row])
        
        return cell
    }
}

