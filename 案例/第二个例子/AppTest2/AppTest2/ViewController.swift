//
//  ViewController.swift
//  AppTest2
//
//  Created by Mario Ling on 2017/4/18.
//  Copyright © 2017年 Mario Ling. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var textPwd: UITextField!
    @IBOutlet weak var btn_show: UIButton!
    @IBOutlet weak var textUser: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    @IBAction func btn_click(_ sender: Any) {
        
        if textUser.text == "1" && textPwd.text == "1"
        //跳转
        {
          self.performSegue(withIdentifier: "showSecondView", sender: btn_show)
        }
        else
        {
        
        }
        //提示
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let btn = UIButton(frame: CGRect(x: 30, y: 350, width: 80, height: 30))
//        btn.backgroundColor = UIColor.blue
//        btn.setTitle("我的按钮", for: UIControlState())
//      
//        
//        self.view.addSubview(btn)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

