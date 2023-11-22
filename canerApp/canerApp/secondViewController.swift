//
//  secondViewController.swift
//  canerApp
//
//  Created by 권인우 on 11/22/23.
//

import UIKit

class secondViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let elements = ["갑상선암","담낭&담도암","대장암","유방암","자궁경부암","전립선암","췌장암","위암","폐암","간암"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension secondViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        cell.cencerLbl.text = elements[indexPath.row]
        cell.cencerImage.image = UIImage(named: elements[indexPath.row])
        
        return cell
    }
}
