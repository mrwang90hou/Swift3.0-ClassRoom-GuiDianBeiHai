//
//  ViewController.swift
//  NSKeyedArchiver_student
//
//  Created by 王宁 on 2017/5/9.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var btn_save:UIButton?
    var btn_read:UIButton?
    var userName:UITextField?
    var pwd : UITextField?
    var user:UserModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        userName = self.viewWithTag(1) as? UITextField
        pwd = self.viewWithTag(2) as? UITextField
        btn_save = self.viewWithTag(3) as? UIButton
        btn_read = self.viewWithTag(4) as? UIButton
       
        btn_save?.addTarget(self, action: #selector(), for:UIControlEvents.touchUpInside)
        
    }
    //序列化到本地
    func saveUser()
    {
        user = UserModel()
        user?.userName = userName?.text
        user?.pwd = pwd?.text
        
        let data = NSMutableDictionary()
        let archiver = NSKeyedArchiver()
        
        archiver.encode(user, forKey: "user")
        archiver.finishEncoding()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

