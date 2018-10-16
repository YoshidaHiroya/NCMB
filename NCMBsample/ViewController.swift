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
    
    
    @IBAction func loadData(){
        let query=NCMBQuery(className:"message")
        query?.findObjectsInBackground({ (result, error) in
            if error != nil{
                print("error")
            } else {
                
                print(result)
            }
            let messages = result as![NCMBObject]
            let text = messages.last?.object(forKey:"text")as!String
            self.sampleTextFiled.text=text
        })
    }
    
    
}

