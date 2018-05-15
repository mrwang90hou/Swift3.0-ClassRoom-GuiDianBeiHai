//
//  ViewController.swift
//  UserDefaulsDemo_student
//
//  Created by 王宁 on 2017/5/9.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var btn:UIButton?
    var userName:UITextField?
    var pwd : UITextField?
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        btn.self?.viewWithTag(3) as? UIButton
        userName.self?.viewWithTag(1) as? UITextField
        pwd.self?.viewWithTag(2) as? UITextField
        
        btn?.addTarget(self, action: #selector(self.saveUser), for: UIControlEvents.touchUpInside)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //保存用户名和密码
    func saveUser()
    {
        UserDefaults.standard.set(userName?.text, forKey: "userName")
        UserDefaults.standard.set(pwd?.text, forKey: "pwd")
        
    }
    func readUser(para:String)
    {
        UserDefaults.standard.string(forKey: "userName")
        UserDefaults.standard.string(forKey: "pwd")
    }
    
    
    

}

