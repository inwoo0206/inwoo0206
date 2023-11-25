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

let interval = 1.0 // 타이머에 의해 실행되는 함수의 실행 간격
var count = 0 // 함수가 실행된 후 몇 초가 지났는지 경과시간

@objc func updateTime(){
    let date = Date() // 현재 날짜를 받아옴
    let formatter = DateFormatter()
    
    formatter.dateFormat = "yyyy-MM-dd HH:mm EEE" // 현재 날짜 포멧 설정
    
    // lblCurrentTime 라벨 텍스트에 표시
    lblCurrentTime.text = "현재시간: " + formatter.string(from: date) + "\n경과시간(초): " + String(self.count)
    
    self.count = self.count + 1
}

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

