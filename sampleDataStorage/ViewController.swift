//
//  ViewController.swift
//  sampleDataStorage
//
//  Created by s247 on 2017/11/07.
//  Copyright © 2017年 ami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func tupAction(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        
        //テキストという値名で保存する
        userDefaults.set(textField.text, forKey: "text")
        //userDefaultsへの値の保存を明示的に行う
        userDefaults.synchronize()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //ユーザーデフォルトの参照
        let userDefaults = UserDefaults.standard
        
        //textというkeyを指定して保存していた値を取りだす
        //let value = userDefaults.string(forKey: "text")
        
        if let value = userDefaults.string(forKey: "text") {
            textField.text = value
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

