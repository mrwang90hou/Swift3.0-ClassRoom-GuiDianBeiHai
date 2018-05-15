//
//  ViewController.swift
//  GestureDemo
//
//  Created by 王宁 on 2017/5/2.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tapGesture: UITapGestureRecognizer!
    @IBAction func Tap(_ sender: Any) {
        print("双击")
    }
    @IBAction func Long_Click(_ sender: Any) {
        
        print("长按手势👍")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //拍击次数
        tapGesture.numberOfTapsRequired = 2
        //手指个数
        tapGesture.numberOfTouchesRequired = 1
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

