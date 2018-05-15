//
//  ViewController.swift
//  DelegatePara
//
//  Created by 王宁 on 2017/4/23.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//

import UIKit
//                                      老板要实现这个ParaDelegate协议，必须要实现/重写协议里面的方法！
class ViewController: UIViewController,ParaDelegate ,UITextFieldDelegate{
    var myLabel : UILabel?
    var myText : UITextField? = nil
    
    override func viewDidLoad() {
           super.viewDidLoad()

        /*尽量少用内连的形式
         
         第二种找到控件的方式
         view  ->  tag  为1
         */
        //找到tag为1的值           UIView   ->    UITextField
        myText = self.view.viewWithTag(1) as? UITextField
        myLabel = self.view.viewWithTag(2) as? UILabel
        myText?.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue:UIStoryboardSegue, sender: Any?)
    {
        if(segue.identifier == "toNext")
        {
            let secondView = segue.destination as! SecondViewController
            let string:String = "wangning"
            secondView.textString = myText?.text
            secondView.textString = "wangning"
            secondView.textString = string
            secondView.myDelegate = self
            
        }
    }

    func setText(text: String) {
        myLabel?.text = text
    }
    
    
    
    public func textFieldDidEndEditing(_ textField: UITextField)
    {
        //作业：：：实现label和text 的
        myLabel?.text = myText?.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

