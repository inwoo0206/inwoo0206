//
//  secondViewController.swift
//  canerApp
//
//  Created by 권인우 on 11/22/23.
//

import UIKit

class secondViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var selectedUrl: String?
    
    let urlArr : [String] = ["https://www.cancer.go.kr/lay1/program/S1T211C212/cancer/view.do?cancer_seq=3341","https://www.cancer.go.kr/lay1/program/S1T211C219/cancer/view.do?cancer_seq=3749","https://www.cancer.go.kr/lay1/program/S1T211C214/cancer/view.do?cancer_seq=3797","https://www.cancer.go.kr/lay1/program/S1T211C217/cancer/view.do?cancer_seq=4757","https://www.cancer.go.kr/lay1/program/S1T211C223/cancer/view.do?cancer_seq=4877","https://www.cancer.go.kr/lay1/program/S1T211C218/cancer/view.do?cancer_seq=4949","https://www.cancer.go.kr/lay1/program/S1T211C221/cancer/view.do?cancer_seq=5117","https://www.cancer.go.kr/lay1/program/S1T211C213/cancer/view.do?cancer_seq=4661","https://www.cancer.go.kr/lay1/program/S1T211C215/cancer/view.do?cancer_seq=5237","https://www.cancer.go.kr/lay1/program/S1T211C216/cancer/view.do?cancer_seq=3317"]
    
    let elements = ["갑상선암","담낭&담도암","대장암","유방암","자궁경부암","전립선암","췌장암","위암","폐암","간암"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowWebView",
           let WebViewController = segue.destination as? webViewController {
            WebViewController.urllink = selectedUrl
        }
    }
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedUrl = urlArr[indexPath.row]
        performSegue(withIdentifier: "ShowWebView", sender: nil)
    }
}
