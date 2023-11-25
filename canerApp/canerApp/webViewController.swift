//
//  webViewController.swift
//  canerApp
//
//  Created by 권인우 on 11/23/23.
//

import UIKit
import WebKit

class webViewController: UIViewController {
    
    var urllink : String?
    
    @IBOutlet weak var webPageView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let urlString = urllink {
            let receive = URL(string: urlString)
            let request = URLRequest(url : receive!)
            webPageView.load(request)
        }
    }
}
