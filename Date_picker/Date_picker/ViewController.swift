//
//  ViewController.swift
//  Date_picker
//
//  Created by 권인우 on 11/16/23.
//

import UIKit

class ViewController: UIViewController {
    let interval = 1.0 // 타이머에 의해 실행되는 함수의 실행 간격
    var count = 0 // 함수가 실행된 후 몇 초가 지났는지 경과시간

    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: #selector(self.updateTime), userInfo: nil, repeats: true)
    }

    
    // DatePicker 의 Preferred style 설정에 따라 형태가 변함
    // inline 은 달력 형식으로 출력됨
    // Mode 를 count down 으로 하면 스톱워치 식으로 돌아간다.
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView: UIDatePicker = sender
        
        let formatter: DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime(){
        let date = Date() // 현재 날짜를 받아옴
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE" // 현재 날짜 포멧 설정
        
        // lblCurrentTime 라벨 텍스트에 표시
        lblCurrentTime.text = "현재시간: " + formatter.string(from: date) + "\n경과시간(초): " + String(self.count)
        
        self.count = self.count + 1
    }
    
    
}

