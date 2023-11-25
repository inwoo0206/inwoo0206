//
//  preViewController.swift
//  canerApp
//
//  Created by 권인우 on 11/26/23.
//

import UIKit

class preViewController: UIViewController {
    
    let preventList: [(key: String, value: String)] = [
            ("금연", "담배를 피우지 말고, 남이 피우는 담배 연기도 피하기."),
            ("과일&채소", "채소와 과일을 충분하게 먹고, 다채로운 식단으로 균형 잡힌 식사하기."),
            ("짠음식"," 음식을 짜지 않게 먹고, 탄 음식을 먹지 않기."),
            ("음주"," 암 예방을 위하여 하루 한 두잔의 소량 음주도 피하기."),
            ("운동"," 주 5회 이상, 하루 30분 이상, 땀이 날 정도로 걷거나 운동하기."),
            ("체중관리"," 자신의 체격에 맞는 건강 체중 유지하기."),
            ("예방접종"," 예방접종 지침에 따라 B형 간염과 자궁경부암 예방접종 받기."),
            ("성생활"," 성 매개 감염병에 걸리지 않도록 안전한 성생활 하기."),
            ("안전수칙"," 발암성 물질에 노출되지 않도록 작업장에서 안전 보건수칙 지키기."),
            ("암검진"," 암 조기 검진 지침에 따라 검진을 빠짐없이 받기.")
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        preventTableView.delegate = self
        preventTableView.dataSource = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension preViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return preventList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "preventCell", for: indexPath) as! PreventTableViewCell
        let preventData = preventList[indexPath.row]
        let imgName = preventData.key + ".jpeg"
        cell.preventLbl.text = "\(preventData.key): \(preventData.value)"
        cell.preventImg.image = UIImage(named: imgName)
        return cell
    }
}
