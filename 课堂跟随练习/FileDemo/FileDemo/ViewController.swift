//
//  ViewController.swift
//  FileDemo
//
//  Created by 王宁 on 2017/5/4.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //应用程序的主目录
        let homePath = NSHomeDirectory()
        print(homePath.description)
        
        let documentPath = NSHomeDirectory() + "/Documents"
        //文档目录
        print(documentPath)
        
        
        let libraryPath = NSHomeDirectory() + "/Library/Caches"
        print(libraryPath)

        //库目录
        let cachePath = NSHomeDirectory() + "/Library/Caches"
        print(cachePath)

        //缓存目录
        let tempPath = NSHomeDirectory() + "/tmp"
        
        print(tempPath)

        
        
        //文件管理器
        let manger = FileManager.default
        //创建文件夹
        let baseURL = documentPath + "/myFolder"
        
        let exist = manger.fileExists(atPath: baseURL)
        
        if !exist {
            do {
                //方法(1)try
                try manger.createDirectory(atPath: baseURL, withIntermediateDirectories: true, attributes: nil)
                
                //方法(2)try!    强制执行
              //  try! manger.createDirectory(at: baseURL, withIntermediateDirectories: true, attributes: nil)
                //方法(3)try?    返回🈳️
             //   try? manger.createDirectory(at: baseURL, withIntermediateDirectories: true, attributes: nil)
            }
            catch
            {
                print("有异常！")
            }
            /*
            //方法二：
            if let result = try? manger.createDirectory(at: baseURL, withIntermediateDirectories: true, attributes: nil) == nil
            {
                
            }
            //方法三
            try! manger.createDirectory(at: baseURL, withIntermediateDirectories: true, attributes: nil) == nil

            
            
            */
            
        }
        
        writeTxt()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    //创建文本文件
    
    func writeTxt()
    {
        let filePath:String = NSHomeDirectory() + "/Documents/myFolder/Demo.text"
        let inf = "写入的文字！"
        do
        {
            try inf.write(toFile: filePath, atomically: true, encoding: .utf8)
            print("写入完成✅")
        }
        catch
        {
            print("写入错误❌")
        }
        
        
    }
    
    func writeImage()
    {
        let imagePath:String = NSHomeDirectory() + "/Documents/myFolder/pic.png"
        let image = UIImage(named:"")
        let imageData:Data = UIImagePNGRepresentation(image!)!
        
        do
        {
            try imageData.write(to: URL(fileURL(imagePath), options: Data.WritingOptions.atomic)

            print("写入完成✅")
        }
        catch
        {
            print("写入错误❌")
        }

   
    }
    
    
    func CopyFile()
    {
        let currentFile = NSHomeDirectory() + "/"
        
        
        let toFile = NSHomeDirectory() + "/"
        
        
    }
    func
    
    
    
    //删除文件夹
    //遍历文件夹
    
    

}

