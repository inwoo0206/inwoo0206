//
//  ViewController.swift
//  practice
//
//  Created by 권인우 on 11/23/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var selectedDate: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let date = Date()
        let formatter : DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let imgName = formatter.string(from: date) + ".jpg"
        
        imageView.image = UIImage(named: imgName)
        
        if(selectedDate == nil){
            selectedDate.text = ""
        }
        else {
            selectedDate.text = "선택된 이미지: " + formatter.string(from: date)
        }
    }


    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView : UIDatePicker = sender
        
        let formatter : DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        let imgName = formatter.string(from : datePickerView.date) + ".jpg"
        
        imageView.image = UIImage(named: imgName)
        
        if(selectedDate == nil){
            selectedDate.text = ""
        }
        else {
            selectedDate.text = "선택된 이미지: " + formatter.string(from: datePickerView.date)
        }
        
        
        
    }
}

