//
//  ViewController.swift
//  TestApp
//
//  Created by 王宁 on 2017/4/13.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//
//视图控制器
//导入 UIKit包
import UIKit
//ios中用于视图控制的类   继承  自
class ViewController: UIViewController {
    //当界面载入时调用
    override func viewDidLoad() {
        super.viewDidLoad()             //与java中onCreat()相同
        // Do any additional setup after loading the view, typically from a nib.
        //加载视图后，可以做任何额外的安装，通常是从笔尖。
        
        let image = UIImage(named:"2")
        let iamgeView = UIImageView(image:image)     //容器
        self.view.addSubview(iamgeView)//显示图片
        
        Noti
        
    }
    override func didReceiveMemoryWarning() {
        //内存警告⚠️时
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

