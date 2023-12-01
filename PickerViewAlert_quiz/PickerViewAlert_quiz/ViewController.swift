//
//  ViewController.swift
//  PickerViewAlert_quiz
//
//  Created by 권인우 on 11/30/23.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    let picker_view_colunm = 1
    let imgName_1 = ["20231101_010101.jpg","20231101_020101.jpg","20231101_030101.jpg"]
    let imgName_3_am = ["20231103_010101.jpg","20231103_020101.jpg","20231103_030101.jpg"]
    let amimgName = ["20231101_010101.jpg","20231101_020101.jpg","20231101_030101.jpg","20231103_010101.jpg","20231103_020101.jpg","20231103_030101.jpg"]
    let pmimgName = ["20231103_160201.jpg","20231103_190201.jpg","20231103_200201.jpg","20231103_220201.jpg","20231110_140103.jpg","20231110_170103.jpg"]
    let imgName_3_pm = ["20231103_160201.jpg","20231103_190201.jpg","20231103_200201.jpg","20231103_220201.jpg"]
    let imgName_10 = ["20231110_140103.jpg","20231110_170103.jpg"]
    var selectedDate: String = ""
    
    
    
    @IBOutlet var datePicker: UIDatePicker!
    
    @IBOutlet var amImagePicker: UIPickerView!
    @IBOutlet var amImageView: UIImageView!
    @IBOutlet var amLabel: UILabel!
    
    @IBOutlet var pmImagePicker: UIPickerView!
    @IBOutlet var pmImageView: UIImageView!
    @IBOutlet var pmLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        amImagePicker.delegate = self
        amImagePicker.dataSource = self
        pmImagePicker.delegate = self
        pmImagePicker.dataSource = self
        
        datePicker.addTarget(self, action: #selector(dateChanged), for: .valueChanged)
        
        amLabel.text = amimgName[0]
        amImageView.image = UIImage(named: amimgName[0])
        
        pmLabel.text = pmimgName[0]
        pmImageView.image = UIImage(named: pmimgName[0])
    }
    
    @objc func dateChanged(_ sender: UIDatePicker) {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyyMMdd"
            selectedDate = formatter.string(from: sender.date)
            amImagePicker.reloadAllComponents()
        }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return picker_view_colunm
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView == amImagePicker) {
            if(selectedDate == "20231101"){
                return imgName_1.count
            }
            if(selectedDate == "20231103"){
                return imgName_3_am.count
            }
        }
        if(selectedDate == "20231103"){
            return imgName_3_pm.count
        }
        return imgName_10.count
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        if(pickerView == amImagePicker){
            if(selectedDate == "20231101"){
                let imgView_1 = UIImageView(image: UIImage(named: imgName_1[row]))
                imgView_1.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
                return imgView_1
            }
            let imgView_3am = UIImageView(image: UIImage(named: imgName_3_am[row]))
            imgView_3am.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
            
            return imgView_3am
        }
        if(selectedDate == "20231103"){
            let imgView_3pm = UIImageView(image: UIImage(named: imgName_3_pm[row]))
            imgView_3pm.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
            
            return imgView_3pm
        }
        
        let imgView_10 = UIImageView(image: UIImage(named: imgName_10[row]))
        imgView_10.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        
        return imgView_10
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(pickerView == amImagePicker){
            if(selectedDate == "20231101"){
                amLabel.text = "오전 3장"
                amImageView.image = UIImage(named: imgName_1[row])
            }
            amLabel.text = "오전 3장"
            amImageView.image = UIImage(named: imgName_3_am[row])
        }
        if(selectedDate == "20231103"){
            pmLabel.text = "오후 4장"
            pmImageView.image = UIImage(named: imgName_3_pm[row])
        }
        pmLabel.text = "오후 2장"
        pmImageView.image = UIImage(named: imgName_10[row])
    }

}



















/*
 import UIKit

 class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
     
     let picker_view_colunm = 1
     
     let imgName_up = ["top_1.jpg","top_2.jpg","top_3.jpg","top_4.jpg","top_5.jpg"]
     let imgName_bt = ["bottom_1.jpg","bottom_2.jpg","bottom_3.jpg"]
     
     
     @IBOutlet var lblPicker: UIPickerView!
     @IBOutlet var selectedLbl: UILabel!
     
     @IBOutlet var imgPicker: UIPickerView!
     @IBOutlet var selectedImg: UIImageView!
     
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
         lblPicker.delegate = self
         imgPicker.delegate = self
         
         selectedLbl.text = imgName_bt[0]
         selectedImg.image = UIImage(named: imgName_up[0])
         
     }
     
     func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return picker_view_colunm
     }
     
     func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         if (pickerView == lblPicker) {
             return imgName_up.count
         }
         
         return imgName_bt.count
     }
     
     func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
         if(pickerView == lblPicker){
             let imgView_up = UIImageView(image: UIImage(named: imgName_up[row]))
             imgView_up.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
             
             return imgView_up
         }
         
         let imgView_bt = UIImageView(image: UIImage(named: imgName_bt[row]))
         imgView_bt.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
         
         return imgView_bt
     }
     
     func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         if(pickerView == lblPicker){
             selectedLbl.text = imgName_up[row]
         }
         else{
             selectedImg.image = UIImage(named: imgName_bt[row])
         }
     }
     
 }
 */
