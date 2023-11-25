//
//  testTwowebViewController.swift
//  canerApp
//
//  Created by 권인우 on 11/26/23.
//

import UIKit
import WebKit

class testTwowebViewController: UIViewController {

    
    @IBOutlet weak var testTwowebView: WKWebView!
    
    let urlTest : String? = "https://www.youtube.com/watch?v=mSXmJxSN0_o"
   
    override func viewDidLoad() {
        super.viewDidLoad()
        if let urlString = urlTest {
            let receive = URL(string: urlString)
            let request = URLRequest(url : receive!)
            testTwowebView.load(request)
        }
    }
    


}
