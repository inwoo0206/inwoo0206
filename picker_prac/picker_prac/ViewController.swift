//
//  ViewController.swift
//  picker_prac
//
//  Created by 권인우 on 11/29/23.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    let max_array_num = 10
    let picker_view_column = 1
    var imageArray = [UIImage?]()
    var imagefileName = ["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg"]
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var imgName: UILabel!
    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerImage.delegate = self
        for i in 0..<max_array_num{
            let image  = UIImage(named: imagefileName[i])
            imageArray.append(image)
        }
        imgName.text = imagefileName[0]
        imageView.image = imageArray[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return picker_view_column
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imagefileName.count
    }
    
    /*func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imagefileName[row]
    } */
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView{
        let imgView = UIImageView(image: imageArray[row])
        imgView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        return imgView
    }

    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imgName.text = imagefileName[row]
        imageView.image = imageArray[row]
    }
}

