//
//  ViewController.swift
//  datePickerPrac
//
//  Created by 권인우 on 11/22/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var selectedImg: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let date = Date()
        let formatter : DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let imgName = formatter.string(from: date) + ".jpg"
        imageView.image = UIImage(named: imgName)
        
        if (selectedImg == nil) {
            selectedImg.text = ""
        }
        else {
            selectedImg.text = "선택된 이미지: " + formatter.string(from: date)
        }
    }


  
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView : UIDatePicker = sender
        
        let formatter : DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let imgName = formatter.string(from: datePickerView.date) + ".jpg"
        
        imageView.image = UIImage(named: imgName)
        if (selectedImg == nil) {
            selectedImg.text = ""
        }
        else {
            selectedImg.text = "선택된 이미지: " + formatter.string(from: datePickerView.date)
        }
    }
}

