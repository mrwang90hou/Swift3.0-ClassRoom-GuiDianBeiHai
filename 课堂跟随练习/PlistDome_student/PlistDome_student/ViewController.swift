//
//  ViewController.swift
//  PlistDome_student
//
//  Created by 王宁 on 2017/5/9.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //创建一个plist
        let dict:NSMutableDictionary = NSMutableDictionary()
        dict.setObject("Test", forKey: "username" as NSCopying)
        dict.setObject("1234", forKey: "pwd" as NSCopying)
        
        let plistPath = Bundle.main.path(forResource: "demoPlist", ofType: "plist")
        dict.write(toFile: "plistPath!", atomically: true)
        //读plist文件
        let data:NSMutableDictionary = NSMutableDictionary(contentsOfFile:plistPath!)!
        print(data["userName"])
        print(data["pwd"])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

