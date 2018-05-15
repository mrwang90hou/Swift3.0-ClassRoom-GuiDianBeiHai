//
//  ViewController.swift
//  ControlsDemo
//
//  Created by 王宁 on 2017/4/25.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Stepper_Touch(_ sender: Any) {
        let stepper = sender as! UIStepper
        
        print(stepper.value)
    }
    @IBOutlet weak var progressCircle: UIActivityIndicatorView!
    @IBAction func Switch_Touch(_ sender: Any) {
        print("点击了Stwitch")
        progressCircle.startAnimating()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

