//
//  ViewController.swift
//  DatePicker_quiz
//
//  Created by 권인우 on 11/23/23.
//

import UIKit

class ViewController: UIViewController {

    let interval = 1.0 // 타이머에 의해 실행되는 함수의 실행 간격
    var count = 0 // 함수가 실행된 후 몇 초가 지났는지 경과시간
    
    @IBOutlet var imageView: UIImageView!
    
    
    @IBOutlet var selectedImg: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let date = Date()
        let formatter : DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd_HHmmss"
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
        formatter.dateFormat = "yyyyMMdd_HHmmss"
        let imgName = formatter.string(from: datePickerView.date) + ".jpg"
        
        imageView.image = UIImage(named: imgName)
        if (selectedImg == nil) {
            selectedImg.text = ""
        }
        else {
            selectedImg.text = "선택된 이미지: " + formatter.string(from: datePickerView.date)
        }
    }
    
    
    @objc func updateTime(){
        
        self.count = self.count + 1
    }

    
    @IBAction func imageSwitch(_ sender: UISwitch) {
        if sender.isOn{
            Timer.scheduledTimer(timeInterval: interval, target: self, selector: #selector(self.updateTime), userInfo: nil, repeats: true)
        }
    }
    
}

