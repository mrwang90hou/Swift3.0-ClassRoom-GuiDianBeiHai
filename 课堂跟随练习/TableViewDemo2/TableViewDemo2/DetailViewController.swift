//
//  DetailViewController.swift
//  TableViewDemo2
//
//  Created by 王宁 on 2017/5/2.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//

import UIKit

class DetailViewController: ViewController {

    var itemString2:String?
    var myLabel : UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel = self.view.viewWithTag(1) as? UILabel
        myLabel?.text = itemString2
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
