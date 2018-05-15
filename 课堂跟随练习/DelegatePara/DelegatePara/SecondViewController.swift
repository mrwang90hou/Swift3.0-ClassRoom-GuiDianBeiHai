//
//  SecondViewController.swift
//  DelegatePara
//
//  Created by 王宁 on 2017/4/23.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//

import UIKit
//                                                      监听协议：UITextFieldDelegate
class SecondViewController: UIViewController,UITextFieldDelegate{

    
    //声明一个接口的对象
    var myDelegate:ParaDelegate?
    var textString : String?
    var myText:UITextField?
    
    //@IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let text = self.view.viewWithTag(1) as! UILabel
        text.text = textString
        // Do any additional setup after loading the view.
        myText = self.view.viewWithTag(2) as? UITextField
        
        myText?.delegate = self
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //当我们完成编辑时
    public func textFieldDidEndEditing(_ textField: UITextField)
    {
        //myDelegate?.setText(text: "12345!")
        myDelegate?.setText(text: textField.text!)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
