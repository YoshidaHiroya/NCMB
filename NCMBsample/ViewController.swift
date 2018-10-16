//
//  ViewController.swift
//  NCMBsample
//
//  Created by 吉田郭冶 on 2018/10/16.
//  Copyright © 2018年 吉田郭冶. All rights reserved.
//

import UIKit
import NCMB
class ViewController: UIViewController {
    @IBOutlet var sampleTextFiled : UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func save(){
        let Object=NCMBObject(className:"message")
        Object?.setObject( sampleTextFiled.text, forKey: "text")
        Object?.saveInBackground({ (error) in
            if error != nil{
                print("error")
            }else{
                print("success")
            }
        })
    }
    
}

