//
//  AppDelegate.swift
//  TestApp01
//
//  Created by 王宁 on 2017/4/13.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//
//代理文件 :掌管整个APP的生命周期


/*
    作用：
 （1）描述application整个生命周期的过程，运行状态
 （2）决定再入哪个UIView
 */
import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    //app启动时调用
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("application启动！")
        return true
    }
    //app从后台将要回到前台时候被激活
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        print("pause!准备回到前台")
    }
    //确实退到了后台
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        print("stop!")
        
        /*
         ios : 墓碑机制（后台程序被保留，停止使用，释放内存）
         android : 真后台
         */
        
        
    }
    //app从后台将要回到前台时候被调用
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        print("backing准备要回来了!")
    }
    //已经回来 了
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        print("backed!已经回来了！")
    }
    //生命消失
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        print("被销毁！")
    }


}

