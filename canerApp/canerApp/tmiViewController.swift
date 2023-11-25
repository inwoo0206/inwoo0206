//
//  tmiViewController.swift
//  canerApp
//
//  Created by 권인우 on 11/22/23.
//

import UIKit

class tmiViewController: UIViewController {

    
    @IBOutlet weak var infoTableView: UITableView!
    
    let prevImgList = ["금연","과일&채소","짠음식","음주","운동","체중관리","예방접종","성생활","안전수칙","암검진"]
    
    let preventList = [
                "담배를 피우지 말고, 남이 피우는 담배 연기도 피하기.",
                "채소와 과일을 충분하게 먹고, 다채로운 식단으로 균형 잡힌 식사하기.",
                " 음식을 짜지 않게 먹고, 탄 음식을 먹지 않기.",
                " 암 예방을 위하여 하루 한 두잔의 소량 음주도 피하기.",
                " 주 5회 이상, 하루 30분 이상, 땀이 날 정도로 걷거나 운동하기.",
                " 자신의 체격에 맞는 건강 체중 유지하기.",
                " 예방접종 지침에 따라 B형 간염과 자궁경부암 예방접종 받기.",
                " 성 매개 감염병에 걸리지 않도록 안전한 성생활 하기.",
                " 발암성 물질에 노출되지 않도록 작업장에서 안전 보건수칙 지키기.",
                " 암 조기 검진 지침에 따라 검진을 빠짐없이 받기."
            ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoTableView.delegate = self
        infoTableView.dataSource = self
        
    }
    

}

extension tmiViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return preventList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = infoTableView.dequeueReusableCell(withIdentifier: "tmCell", for: indexPath) as! infoTableViewCell
        
        cell.infoImageView.image = UIImage(named: prevImgList[indexPath.row])
        cell.infoLbl.text = preventList[indexPath.row]
        
        return cell
    }
    
    
    
}
