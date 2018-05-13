//
//  ViewController.swift
//  TestApp01
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
        
        
        //状态栏的风火轮
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        //提示正在等待⌛️
        let image = UIImage(named:"2")
        let iamgeView = UIImageView(image:image)     //容器
        self.view.addSubview(iamgeView)//显示图片
        //  通知中心发现时间发生时发生相应         观察者(类本身)去监听时间   发生事件时的响应  #函数选择器                              设备转动的通知
//        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.OrientationChanged(_:)), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
        //作业：第四个参数代表的是谁？
        
        
        
        
        //读取iOS应用配置信息
        let mainBundle = Bundle.main //app文件所在的目录
        let identifier = mainBundle.bundleIdentifier  //程序包的标识符
        let inf = mainBundle.infoDictionary  //程序包配置信息
        let bundleID = mainBundle.object(forInfoDictionaryKey: "CFBundkeName")  //   名称
        let version = mainBundle.object(forInfoDictionaryKey: "VFBundleShortVersionString")       //
        
        print(mainBundle)
        print(identifier)
        print(inf)
        print(bundleID)
        print(version)
        
        
        
        
        
        
    }
    //收到内存警告的时候
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    //屏幕状态走向发生变化时的函数           通知
    func OrientationChanged(_ notification:Notification)
    {
        //当前设备的状态
        let device = UIDevice.current   //返回值是一个枚举（屏幕状态）
        switch device.orientation {      //屏幕的朝向
        case .portrait:
            print("屏幕👆")
        case .landscapeLeft:
            print("屏幕👈")
        case .landscapeRight:
            print("屏幕👉")
        case .portraitUpsideDown:
            print("屏幕👇")
        default:
            print("default!")
        }
    }
    
}

