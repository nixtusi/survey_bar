//
//  ViewController.swift
//  formButton
//
//  Created by Yuta Nisimatsu on 2025/03/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    
    @IBOutlet weak var result: UILabel!
    
    var selectedNumber = 0 // 選択された数字
    var buttons: [UIButton] = [] // ボタンの配列
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ボタンを配列にまとめる
        buttons = [one, two, three, four, five]
        
        // 全てのボタンに枠線を設定
        for button in buttons {
            button.layer.borderColor = UIColor.gray.cgColor
            button.layer.borderWidth = 2.0
        }
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        // 選択されたボタンのインデックスを取得（1から5）
        if let index = buttons.firstIndex(of: sender) {
            selectedNumber = index + 1
            result.text = "\(selectedNumber)"
            
            // 背景色の設定
            for (i, button) in buttons.enumerated() {
                button.backgroundColor = i < selectedNumber ? UIColor.cyan : .clear
            }
        }
    }
}
