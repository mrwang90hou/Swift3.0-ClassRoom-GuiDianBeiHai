//
//  ThirdViewController.swift
//  ControlsDemo
//
//  Created by 王宁 on 2017/4/25.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//

import UIKit
//                                          代理事情                告诉表格显示哪些数据
class ThirdViewController: ViewController ,UITableViewDelegate,UITableViewDataSource{

    
    
    //声明一个表格
    var table:UITableView?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        table = self.view.viewWithTag(1)as!UITableView
        
        
        
        
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

    //返回表格的分组数量   (作业)
    public func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    //表格中多少单元格
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 10
    }
    //每个单元格是什么样子   返回一个复用的单元格
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //                                                      要载入的原型单元格名字
        let tableCell:UITableViewCell = (table?.dequeueReusableCell(withIdentifier: "tableCell1"))!
        tableCell.textLabel?.text = "第\(indexPath.row)格"
        return tableCell
    }
    
    
}
