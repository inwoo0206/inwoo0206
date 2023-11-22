//
//  foodViewController.swift
//  canerApp
//
//  Created by 권인우 on 11/22/23.
//

import UIKit

class foodViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let max_array_num = 10
    let picker_view_column = 1
    var imageArray = [UIImage?]()
    
    var imageFileName = ["갑상선암","담낭&담도암","대장암","유방암","자궁경부암","전립선암","췌장암","위암","폐암","간암"]
    
    var dicDatas : [String : String] = [
        "갑상선암" : " 갑상선암 예방에는 요오드가 풍부한 음식을 섭취하는 것이 좋습니다. 해산물, 우유, 계란 등이 요오드를 많이 함유하고 있습니다.",
        "담낭&담도암" : " 담낭암 담도암 예방에는 풍부한 식이섬유와 항산화물질을 섭취하는 것이 중요합니다. 과일, 채소, 견과류, 씨앗 등을 섭취하세요.",
        "대장암" : " 식이섬유가 풍부한 식품을 섭취하면 대장암 예방에 도움이 됩니다. 통곡류, 콩류, 견과류, 채소, 과일 등이 좋습니다.",
        "유방암" : " 유방암 예방에는 오메가-3 지방산과 식이섬유가 풍부한 식품을 섭취하는 것이 좋습니다. 연어, 아보카도, 치아씨, 호두 등이 좋습니다.",
        "자궁경부암" : " 자궁경부암 예방을 위해선 항산화물질이 풍부한 식품을 섭취하는 것이 중요합니다. 오렌지, 딸기, 브로콜리, 시금치 등이 좋습니다.",
        "전립선암" : " 전립선암 예방에는 리코펜과 셀레늄이 풍부한 식품을 섭취하는 것이 좋습니다. 토마토, 브로콜리, 감자, 새우 등이 좋습니다.",
        "췌장암" : " 췌장암 예방에는 항산화물질이 풍부한 식품을 섭취하는 것이 좋습니다. 베리류, 시금치, 브로콜리, 사과 등이 좋습니다",
        "위암" : " 위암 예방에는 항산화물질과 비타민 C가 풍부한 식품을 섭취하는 것이 좋습니다. 오렌지, 파프리카, 키위, 고추, 토마토 등이 좋습니다.",
        "폐암" : " 폐암 예방에는 베타카로틴과 비타민 C가 풍부한 식품을 섭취하는 것이 좋습니다. 당근, 호박, 감자, 시금치 등이 좋습니다.",
        "간암" : " 간암 예방에는 오메가-3 지방산과 비타민 D가 풍부한 식품을 섭취하는 것이 좋습니다. 연어, 고등어, 아보카도, 버섯, 계란 등이 좋습니다."
    ]
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var testLbl: UILabel!
    
    @IBOutlet var foodImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pickerImage.delegate = self
        
        for i in 0..<max_array_num{
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        
        lblImageFileName.text = imageFileName[0]
        foodImageView.image = imageArray[0]
        testLbl.text = dicDatas[imageFileName[0]]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return picker_view_column
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row : Int , forComponent component: Int) -> String? {
        return imageFileName[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row : Int, inComponent component: Int) {
        lblImageFileName.text = imageFileName[row]
        foodImageView.image = imageArray[row]
        testLbl.text = dicDatas[imageFileName[row]]
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

