//
//  testwebViewController.swift
//  canerApp
//
//  Created by 권인우 on 11/26/23.
//

import UIKit
import WebKit

class testwebViewController: UIViewController,WKUIDelegate,WKNavigationDelegate {
    
    @IBOutlet weak var testWebView: WKWebView!
    
    
    let urlTest : String? = "https://www.youtube.com/watch?v=9y3nbBSbics"
   
    override func viewDidLoad() {
        super.viewDidLoad()
        if let urlString = urlTest {
            let receive = URL(string: urlString)
            let request = URLRequest(url : receive!)
            testWebView.load(request)
        }
    }
}
