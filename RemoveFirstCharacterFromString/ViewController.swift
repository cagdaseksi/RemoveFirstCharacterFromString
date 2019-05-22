//
//  ViewController.swift
//  RemoveFirstCharacterFromString
//
//  Created by MAC on 22.05.2019.
//  Copyright © 2019 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btn(_ sender: UIButton) {
        
        // 0 531 852 59 59
        var value = text.text!
        
        if value.isEmpty {
            result.text = "empty"
        }else {
            
            // first character equals = 0
            if value.prefix(1) == "0"{
                //531 852 59 59
                value.remove(at: value.startIndex)
            }
            //replace space
            // 5318525969
            result.text = value.replacingOccurrences(of: " ", with: "")
        }
        
    }
    
}

