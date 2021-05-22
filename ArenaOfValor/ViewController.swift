//
//  ViewController.swift
//  ArenaOfValor
//
//  Created by 簡吟真 on 2021/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var personaImage: UIImageView!
    @IBOutlet weak var genderSeg: UISegmentedControl!
    @IBOutlet weak var sortText: UITextField!
    @IBOutlet weak var degreeSlider: UISlider!
    @IBOutlet weak var degreeLabel: UILabel!
    @IBOutlet weak var wildSwitch: UISwitch!
    @IBOutlet weak var sendButton: UIButton!
    
    
    @IBAction func degreeSliderText(_ sender: Any) {
        degreeLabel.text = String(format: "%.0f", degreeSlider.value)
    }
    
    var RandomNum = Int.random(in: 1...10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //點空白處收鍵盤
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
    }
    
    //點return收鍵盤 (拉 @IBA 時 Event 選擇 Did End On Exit)
    @IBAction func dismissKeyboard(_ sender: Any) {
    }
    
    
    
    //發送Button
    @IBAction func sendBut(_ sender: UIButton) {
        
        let sortStyle:String = sortText.text!
        
        if genderSeg.selectedSegmentIndex == 0{
            
            if sortStyle == "坦克" {
            RandomNum = Int.random(in: 1...10)
            if RandomNum == 1 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "阿塔.jpg")}
            if RandomNum == 2 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "維羅.jpg")}
            if RandomNum == 3 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "古木.jpg")}
            if RandomNum == 4 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "伯頓.jpg")}
            if RandomNum == 5 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "贊尼爾.jpg")}
            if RandomNum == 6 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "克萊斯.jpg")}
            if RandomNum == 7 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "渥馬爾.jpg")}
            if RandomNum == 8 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "薩尼.jpg")}
            if RandomNum == 9 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "牛魔王.jpg")}
            if RandomNum == 10 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "歐米茄.jpg")}
            if wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "error")}
            }
            
        if sortStyle == "戰士" {
            RandomNum = Int.random(in: 1...8)
            if RandomNum == 1 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "弗洛倫.jpg")}
            if RandomNum == 2 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "夜叉.jpg")}
            if RandomNum == 3 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "麥克思.jpg")}
            if RandomNum == 4 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "龍馬.jpg")}
            if RandomNum == 5 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "祖卡.jpg")}
            if RandomNum == 6 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "莫托斯.jpg")}
            if RandomNum == 7 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "趙雲.jpg")}
            if RandomNum == 8 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "呂布.jpg")}
            if wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "洛克.jpg")}
            }
            
        if sortStyle == "刺客" {
            RandomNum = Int.random(in: 1...3)
            if RandomNum == 1 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "亞連.jpg")}
            if RandomNum == 2 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "奎倫.jpg")}
            if RandomNum == 3 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "莫拉.jpg")}
            
            RandomNum = Int.random(in: 1...5)
            if RandomNum == 1 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "潘因.jpg")}
            if RandomNum == 2 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "蝙蝠俠.jpg")}
            if RandomNum == 3 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "科里納卡.jpg")}
            if RandomNum == 4 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "納克羅斯.jpg")}
            if RandomNum == 5 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "悟空.jpg")}
            }
            
        if sortStyle == "法師" {
            RandomNum = Int.random(in: 1...4)
            if RandomNum == 1 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "閃電俠.jpg")}
            if RandomNum == 2 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "伊耿士.jpg")}
            if RandomNum == 3 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "拉茲.jpg")}
            if RandomNum == 4 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "穆加爵.jpg")}
            if wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "error")}
            }
            
        if sortStyle == "射手" {
            RandomNum = Int.random(in: 1...4)
            if RandomNum == 1 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "亥犽.jpg")}
            if RandomNum == 2 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "小丑.jpg")}
            if RandomNum == 3 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "菲尼克.jpg")}
            if RandomNum == 4 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "凡恩.jpg")}
            if RandomNum == 4 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "勇.jpg")}

            RandomNum = Int.random(in: 1...2)
            if RandomNum == 1 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "菲尼克.jpg")}
            if RandomNum == 2 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "凡恩.jpg")}
            }
    
        if sortStyle == "輔助" {
            RandomNum = Int.random(in: 1...6)
            if RandomNum == 1 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "提米.jpg")}
            if RandomNum == 2 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "夸克.jpg")}
            if RandomNum == 3 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "查戈納爾.jpg")}
            if RandomNum == 4 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "皮皮.jpg")}
            if RandomNum == 5 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "卡瑞茲.jpg")}
            if RandomNum == 6 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "朗博.jpg")}
            if wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "error")}
            }
            
        } else {
            
            if sortStyle == "坦克" {
            RandomNum = Int.random(in: 1...4)
            if RandomNum == 1 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "諾可西.jpg")}
            if RandomNum == 2 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "艾瑞.jpg")}
            if RandomNum == 3 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "塔拉.jpg")}
            if RandomNum == 4 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "美娜.jpg")}
            if wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "error")}
            }
            
            if sortStyle == "戰士" {
                RandomNum = Int.random(in: 1...4)
                if RandomNum == 1 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "葉娜.jpg")}
                if RandomNum == 2 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "艾蜜莉.jpg")}
                if RandomNum == 3 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "神力女超人.jpg")}
                if RandomNum == 4 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "艾翠絲.jpg")}
                if wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "error")}
                }
            
            if sortStyle == "刺客" {
                RandomNum = Int.random(in: 1...3)
                if RandomNum == 1 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "蘇離.jpg")}
                if RandomNum == 2 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "綺蘿.jpg")}
                
                RandomNum = Int.random(in: 1...2)
                if RandomNum == 1 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "刀鋒寶貝.jpg")}
                if RandomNum == 2 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "愛里.jpg")}
                }
            
            if sortStyle == "法師" {
                RandomNum = Int.random(in: 1...6)
                if RandomNum == 1 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "蘇離.jpg")}
                if RandomNum == 2 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "莉莉安.jpg")}
                if RandomNum == 3 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "莉莉安.jpg")}
                if RandomNum == 4 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "盧蜜亞.jpg")}
                if RandomNum == 5 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "蘿兒.jpg")}
                if RandomNum == 6 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "貂蟬.jpg")}
                if wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "error")}
                }
            
            if sortStyle == "射手" {
                RandomNum = Int.random(in: 1...5)
                if RandomNum == 1 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "卡芬妮.jpg")}
                if RandomNum == 2 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "靈靈.jpg")}
                if RandomNum == 3 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "琳蒂.jpg")}
                if RandomNum == 4 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "特爾安娜絲.jpg")}
                if RandomNum == 5 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "堇.jpg")}
                if wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "error")}
                }
            
            if sortStyle == "輔助" {
                RandomNum = Int.random(in: 1...4)
                if RandomNum == 1 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "安奈特.jpg")}
                if RandomNum == 2 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "佩娜.jpg")}
                if RandomNum == 3 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "愛麗絲.jpg")}
                if RandomNum == 4 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "若伊.jpg")}
                if wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "error")}
                }
            }
       }
    
    @IBAction func randomButton(_ sender: UIButton) {
        
        RandomNum = Int.random(in: 1...61)
        if RandomNum == 1 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "阿塔.jpg")}
        if RandomNum == 2 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "維羅.jpg")}
        if RandomNum == 3 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "古木.jpg")}
        if RandomNum == 4 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "伯頓.jpg")}
        if RandomNum == 5 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "贊尼爾.jpg")}
        if RandomNum == 6 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "克萊斯.jpg")}
        if RandomNum == 7 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "渥馬爾.jpg")}
        if RandomNum == 8 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "薩尼.jpg")}
        if RandomNum == 9 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "牛魔王.jpg")}
        if RandomNum == 10 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "歐米茄.jpg")}
        if RandomNum == 11 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "弗洛倫.jpg")}
        if RandomNum == 12 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "夜叉.jpg")}
        if RandomNum == 13 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "麥克思.jpg")}
        if RandomNum == 14 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "龍馬.jpg")}
        if RandomNum == 15 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "祖卡.jpg")}
        if RandomNum == 16 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "莫托斯.jpg")}
        if RandomNum == 17 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "趙雲.jpg")}
        if RandomNum == 18 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "呂布.jpg")}
        if RandomNum == 19 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "亞連.jpg")}
        if RandomNum == 20 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "奎倫.jpg")}
        if RandomNum == 21 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "莫拉.jpg")}
        if RandomNum == 22 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "閃電俠.jpg")}
        if RandomNum == 23 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "伊耿士.jpg")}
        if RandomNum == 24 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "拉茲.jpg")}
        if RandomNum == 25 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "穆加爵.jpg")}
        if RandomNum == 26 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "亥犽.jpg")}
        if RandomNum == 27 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "小丑.jpg")}
        if RandomNum == 28 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "菲尼克.jpg")}
        if RandomNum == 29 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "凡恩.jpg")}
        if RandomNum == 30 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "勇.jpg")}
        if RandomNum == 31 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "提米.jpg")}
        if RandomNum == 32 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "夸克.jpg")}
        if RandomNum == 33 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "查戈納爾.jpg")}
        if RandomNum == 34 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "皮皮.jpg")}
        if RandomNum == 35 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "卡瑞茲.jpg")}
        if RandomNum == 36 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "朗博.jpg")}
        if RandomNum == 37 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "諾可西.jpg")}
        if RandomNum == 38 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "艾瑞.jpg")}
        if RandomNum == 39 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "塔拉.jpg")}
        if RandomNum == 40 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "美娜.jpg")}
        if RandomNum == 41 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "葉娜.jpg")}
        if RandomNum == 42 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "艾蜜莉.jpg")}
        if RandomNum == 43 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "神力女超人.jpg")}
        if RandomNum == 44 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "艾翠絲.jpg")}
        if RandomNum == 45 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "蘇離.jpg")}
        if RandomNum == 46 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "綺蘿.jpg")}
        if RandomNum == 47 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "蘇離.jpg")}
        if RandomNum == 48 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "莉莉安.jpg")}
        if RandomNum == 49 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "莉莉安.jpg")}
        if RandomNum == 50 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "盧蜜亞.jpg")}
        if RandomNum == 51 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "蘿兒.jpg")}
        if RandomNum == 52 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "貂蟬.jpg")}
        if RandomNum == 53 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "卡芬妮.jpg")}
        if RandomNum == 54 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "靈靈.jpg")}
        if RandomNum == 55 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "琳蒂.jpg")}
        if RandomNum == 56 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "特爾安娜絲.jpg")}
        if RandomNum == 57 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "堇.jpg")}
        if RandomNum == 58 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "安奈特.jpg")}
        if RandomNum == 59 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "佩娜.jpg")}
        if RandomNum == 60 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "愛麗絲.jpg")}
        if RandomNum == 61 && wildSwitch.isOn == false{personaImage.image = #imageLiteral(resourceName: "若伊.jpg")}
        
        RandomNum = Int.random(in: 1...9)
        if RandomNum == 1 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "潘因.jpg")}
        if RandomNum == 2 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "蝙蝠俠.jpg")}
        if RandomNum == 3 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "科里納卡.jpg")}
        if RandomNum == 4 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "納克羅斯.jpg")}
        if RandomNum == 5 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "悟空.jpg")}
        if RandomNum == 6 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "菲尼克.jpg")}
        if RandomNum == 7 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "凡恩.jpg")}
        if RandomNum == 8 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "刀鋒寶貝.jpg")}
        if RandomNum == 9 && wildSwitch.isOn == true{personaImage.image = #imageLiteral(resourceName: "愛里.jpg")}
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
}

