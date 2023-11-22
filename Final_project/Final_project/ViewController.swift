//
//  ViewController.swift
//  final_project
//
//  Created by 권인우 on 11/18/23.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var button: UIButton = {
        let btn = UIButton(frame: CGRect(x: view.frame.width/2 - 75, y: 400, width: 150, height: 50),
                           primaryAction: UIAction(handler: { _ in
            // 버튼 동작으로 push하기
            self.navigationController?.pushViewController(SecondViewController(), animated: true)
        }))
        btn.setTitle("NextVC", for: .normal)
        btn.backgroundColor = .systemBlue
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        self.view.addSubview(button)
        
        // 네이게이션바 타이틀 설정
        self.navigationItem.title = "FirstVC"
    }
}
