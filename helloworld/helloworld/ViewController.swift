//
//  ViewController.swift
//  helloworld
//
//  Created by 권인우 on 2023/11/02.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var lblHello: UILabel!
    
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func btnSend(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!
    }
    
    
}

