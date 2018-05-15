//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by 王宁 on 2017/5/11.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        Thread.sleep(forTimeInterval: 5)
        
        
        
        //              当前的代理
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedObjectContext = appDelegate.persistentContainer.viewContext

        
        
        
        //增加 insert
        inserCoreData(entity:"User",context:NSManagedObjectContext,key:["username","pwd"],value:["zhangsan","123"])
        
        
        //查询
        queryCoreData(entity: "User", predicate: nil,context:managedObjectContext)
        
        
        //删除
        deleteCoreData(entity:"User",predicate:nil,context:managedObjectContext)
        queryCoreData(entity: "User", predicate: nil,context:managedObjectContext)
        //更新
        upadeCoreData(entity:"User",predicate:nil,context:managedObjectContext,value:"789",fields:[string])

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //插入数据
    
    func inserCoreData(entity:String,context:NSManagedObjectContext,key:[String],value:[String])
    {
        //插入对象
        
        let newUser = NSEntityDescription.insertNewObject(size(forEntityName: entity, into: context))
        
        for i in 1..<key.count
        {
            newUser.setValue(value[i],forKey:key[i])
        }
        do{
            try  context.save()
            print("insert done!")
        }
        catch
        {
            print("insert error!")
        }
    }
    //查询方法                          查询位词
    func queryCoreData(entity:String,predicate:String?,context:NSManagedObjectContext)
    {
        let queryUser = NSFetchRequest<NSFetchRequestResult>(entityName:entity)
        
        do
        {
            if predicate != nil {
                //查询的条件
                let myPredicate = NSPredicate(format:predicate!,"")
                queryUser.predicate = myPredicate
 
            }
            //查询
            let results =  try context.fetch(queryUser) as! [NSManagedObject]
            print("查询结果！")
            
            for result in results
            {
                //print(resut)
                let User = result as! User
                print(user.username)
                print(user.pwd)
            }
        }
        catch
        {
            
        }
        
        

    }
    
    //删除
    func deleteCoreData(entity:String,predicate:String?,context:NSManagedObjectContext)
    {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:entity)
        do
        {
            if predicate != nil {
                //条件
                let myPredicate = NSPredicate(format:predicate!,"")
                fetchRequest.predicate = myPredicate
            }
            //要删除的记录📝
            let results =  try context.fetch(fetchRequest) as! [NSManagedObject]
            for result in results
            {
                context.delete(result)
            }
        }
            
        catch
        {
            
        }
    }
    //更新
    func upadeCoreData(entity:String,predicate:String?,context:NSManagedObjectContext,value:[String],fields:[string])
    {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:entity)
        do
        {
            if predicate != nil {
                //更新条件
                let myPredicate = NSPredicate(format:predicate!,"")
                fetchRequest.predicate = myPredicate
            }
            //要更新的记录📝
            let results =  try context.fetch(fetchRequest) as! [User]
            for result in results
            {
                result.pwd = value
            }
            //保存更改
            try context.save()
            print("upate done!")
        }
            
        catch
        {
            print("upate error!")

        }

        
        
        
        
    }
    
    
}

