//
//  ViewController.swift
//  mySecretRecipe
//
//  Created by 권인우 on 11/30/23.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    let urlList = ["https://www.youtube.com/watch?v=OpJOUU5rePY",
                   "https://youtube.com/shorts/_CLD75U_Mq8?si=CDx0iTWa4eGf2E6v",
                   "https://www.youtube.com/watch?v=FP6bn6iITeU&list=RDFP6bn6iITeU&start_radio=1",
                   "https://www.youtube.com/watch?v=E24LrgXMQ5U",
                   "https://www.youtube.com/watch?v=NbhdwijNKqc&list=PLQWqjre47BkUh4ah-Kj-yj9tvDlfsFu2E",
                   "https://www.youtube.com/watch?v=lq7aQfAggZA&list=PLGqKMWSwFznHfJzxgdG_4ODhcMbyN3Li5",
                   "https://www.youtube.com/shorts/KGDTjAnH7ok","https://www.youtube.com/shorts/RoazkcpCWZo","https://www.youtube.com/watch?v=EzB7hB8EaVU","https://www.youtube.com/watch?v=Dd6O7DHhbSw","https://issuya.com/data/editor/2304/16804012622912.mp4","https://img.mbong.kr/files/attach/mbong_files/2023/05/02/071549VLgwBMkosiij.mp4"]
    
    @IBOutlet var listWebView: WKWebView!

    var myurl:String = "https://www.google.com"
    @IBAction func bt1(_ sender: UIButton) {
        myurl = urlList[0]
        let receive = URL(string: myurl)
        let request = URLRequest(url : receive!)
        listWebView.load(request)
    }
    @IBAction func bt2(_ sender: UIButton) {
        myurl = urlList[1]
        let receive = URL(string: myurl)
        let request = URLRequest(url : receive!)
        listWebView.load(request)
    }
    @IBAction func bt3(_ sender: UIButton) {
        myurl = urlList[2]
        let receive = URL(string: myurl)
        let request = URLRequest(url : receive!)
        listWebView.load(request)
    }
    @IBAction func bt4(_ sender: UIButton) {
        myurl = urlList[3]
        let receive = URL(string: myurl)
        let request = URLRequest(url : receive!)
        listWebView.load(request)
    }
    
    @IBAction func bt5(_ sender: UIButton) {
         myurl = urlList[4]
        let receive = URL(string: myurl)
        let request = URLRequest(url : receive!)
        listWebView.load(request)
    }
    
    @IBAction func bt6(_ sender: UIButton) {
         myurl = urlList[5]
        let receive = URL(string: myurl)
        let request = URLRequest(url : receive!)
        listWebView.load(request)
    }
    
    @IBAction func bt7(_ sender: UIButton) {
         myurl = urlList[10]
        let receive = URL(string: myurl)
        let request = URLRequest(url : receive!)
        listWebView.load(request)
    }
    @IBAction func bt8(_ sender: UIButton) {
         myurl = urlList[11]
        let receive = URL(string: myurl)
        let request = URLRequest(url : receive!)
        listWebView.load(request)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            let receive = URL(string: myurl)
            let request = URLRequest(url : receive!)
            listWebView.load(request)
    }
    


}

