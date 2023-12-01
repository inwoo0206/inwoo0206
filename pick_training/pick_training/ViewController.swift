//
//  ViewController.swift
//  pick_training
//
//  Created by 권인우 on 11/29/23.
//

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

