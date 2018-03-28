//
//  ViewController.swift
//  How many fingers am i holding up?
//
//  Created by Sang won Seo on 2018. 3. 26..
//  Copyright © 2018년 Sang won Seo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputNumbers: UITextField!
    @IBOutlet weak var resultNumbers: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func guessNumbers(_ sender: UIButton) {
        //랜덤 숫자 생성
        let number = String(arc4random() % 6)
        if(number == inputNumbers.text!) {
            resultNumbers.text = "맞아요"
        } else {
            resultNumbers.text = "틀렸어요 값은 \(number)입니다"
        }
    }
    

}

