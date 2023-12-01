//
//  startViewController.swift
//  canerApp
//
//  Created by 권인우 on 11/30/23.
//

import UIKit

class startViewController: UIViewController {

    @IBOutlet weak var lblOne: UILabel!
    @IBOutlet weak var lblTwo: UILabel!
    
    @IBOutlet var goButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblOne.alpha = 0.0
        lblTwo.alpha = 0.0
        goButton.alpha = 0.0
        
        UIView.animate(withDuration: 2.0, animations: {
                self.lblOne.alpha = 1.0
                self.lblTwo.alpha = 1.0
            })
        UIView.animate(withDuration: 5.0, animations: {
            self.goButton.alpha = 1.0
            })
    }


}
