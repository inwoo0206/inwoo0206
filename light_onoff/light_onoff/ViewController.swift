//
//  ViewController.swift
//  light_onoff
//
//  Created by 권인우 on 2023/11/02.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imgOn : UIImage?
    var imgOff : UIImage?
    
    
    @IBOutlet var imageView: UIImageView!
    
    
    @IBOutlet var imageResize: UIButton!
    
    
    override func viewDidLoad() {
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        imageView.image = imgOn
    }
    
    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale : CGFloat = 2.0
        var newWidth : CGFloat, newHeight: CGFloat
        
        if isZoom{
            newWidth = imageView.frame.width / scale
            newHeight = imageView.frame.height / scale
            imageResize.setTitle("Zoom", for: .normal)
        } else {
            newWidth = imageView.frame.width * scale
            newHeight = imageView.frame.height * scale
            imageResize.setTitle("Mini", for: .normal)
        }
        imageView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    
    @IBAction func imageSwitch(_ sender: UISwitch) {
        if sender.isOn{
            imageView.image = imgOn
        } else {
            imageView.image = imgOff
        }
        
    }
}
