//
//  ViewController.swift
//  TableViewDemo2
//
//  Created by 王宁 on 2017/4/27.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//

import UIKit
//                                              发生事件            控制内容
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    var itemString:String?
    
    
    
    var editable:Bool = false
    @IBAction func edit_click(_ sender: Any) {
        
        
//        //可编辑模式开启
//        table?.setEditing(true, animated: true)
        editable = !editable
        btn?.setTitle(editable ? "完成" : "编辑",for:UIControlState.normal)
        //可编辑模式开启
        table?.setEditing(editable, animated: true)
    }
    
    @IBAction func delet_btn_click(_ sender: Any) {
        let btn = sender as! UIButton
        let tableCell = btn.superview?.superview as! UITableViewCell
        let indexPath = (table?.indexPath(for:tableCell))!
        if indexPath.section == 0
        {
            fruits.remove(at: indexPath.row)
        }
        else
        {
            weekday.remove(at: indexPath.row)
        }
        //将单元格在表格中取消     删除的行数[数组]                   删除掉的动画
        table?.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
        
    }
    var table:UITableView?
    var btn:UIButton?
    var fruits = ["apple","banana","orange","pear"]
    var weekday = ["Monday","Tuesday","Wednesday","Thursday","Friday","Staurday","Sunday"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        table = self.view.viewWithTag(1) as? UITableView
        btn = self.view.viewWithTag(2) as? UIButton
       
        //可编辑模式开启
        //table?.setEditing(true, animated: true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    //返回表格的分组数量       返回行数
    public func numberOfSections(in tableView: UITableView) -> Int
    {
        return 2
    }
    //表格中多少单元格                                                          块儿数
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        /*
        if section == 0
        {
            return fruits.count
        }
        else
        {
            return weekday.count
        }
 */
        return section == 0 ? fruits.count : weekday.count
    }
    //每个单元格是什么样子   返回一个复用的单元格
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //                                                      要载入的原型单元格名字
        let tableCell:UITableViewCell = (table?.dequeueReusableCell(withIdentifier: "tableCell"))!
//        let tableCell:UITableViewCell = (table?.dequeueReusableCell(withIdentifier: "tableCell"))!
        let label = tableCell.contentView.viewWithTag(1) as! UILabel
        label.text = "第\(indexPath.section)块，第\(indexPath.row)行"
        label.text = "\(indexPath.section == 0 ? fruits[indexPath.row] : weekday[indexPath.row])"
       // indexPath.section == 0 ? fruits[indexPath.row] : weekday[indexPath.row]
        
        //tableCell.textLabel?.text = "第\(indexPath.row)格"
        return tableCell
    }
    // 返回表格当前的可编辑模式    使表格置于可编辑状态
    public func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle
    
    {
        return editable ? UITableViewCellEditingStyle.insert : UITableViewCellEditingStyle.delete

        //return UITableViewCellEditingStyle.insert   //增加
       //return UITableViewCellEditingStyle.delete    //删除
    }
    //删除时候实现的方法，该怎么做
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        var index = indexPath
        index.row += 1
        let indexDel = [indexPath]
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            if indexPath.section == 0
            {
                fruits.remove(at: indexPath.row)
            }
            else
            {
                weekday.remove(at: indexPath.row)
            }
            //将单元格在表格中取消     删除的行数[数组]                   删除掉的动画
            table?.deleteRows(at: indexDel, with: UITableViewRowAnimation.automatic)
        }
        if editingStyle == UITableViewCellEditingStyle.insert
        {
                if indexPath.section == 0
                {
                    fruits.insert("插入的值1", at: indexPath.row + 1)
                }
                else
                {
                    weekday.insert("插入的值2",at: indexPath.row + 1)
                }

                table?.insertRows(at: [index], with: UITableViewRowAnimation.bottom)

        }
        //添加一个组
        //table.index.section
    }
    
    
    
    //当用户改变表格上选项的时候      （对方法的改写）
    // Called after the user changes the selection.
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        itemString = (table?.cellForRow(at: indexPath)?.contentView.viewWithTag(1) as! UILabel).text
        self.performSegue(withIdentifier: "showDetail", sender: nil)//sender哪一行发出去的(事件的来源)
        
    }
    
    //覆盖方法
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail"
        {   //跳转过去的终点
            (segue.destination as! DetailViewController).itemString2 = itemString
        }
    }
    
    
    
    
    
    
    
    
    

    
    

}

