//
//  ViewController.swift
//  Count
//
//  Created by 張翔 on 2021/06/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var parityLabel: UILabel!
    
    var number: Int = 0
    var parity: String = "偶数"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func checkParity(x:Int) -> String{
        //戻り値の型を指定
        
        if x % 2 == 0{
            parity = "偶数"
            //xを２で割った余りが0なら偶数
        }else {
            parity = "奇数"
            //それ以外は奇数
        }
        return parity
    }
    
    @IBAction func plus() {
        number += 1
        countLabel.text = String(number)
        parityLabel.text = checkParity(x: number)
    }
    
    

}

