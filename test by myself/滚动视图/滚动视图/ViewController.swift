//
//  ViewController.swift
//  滚动视图
//
//  Created by 王宁 on 2017/4/21.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIScrollViewDelegate{
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //定义一个屏幕
        let screen = UIScreen.main.bounds
        //获取屏幕的宽度和长度
        let screenWidth = screen.size.width
        let screenHeight = screen.size.height
        //容纳的区域
        scrollView.contentSize = CGSize(width: screenWidth*2, height: screenHeight - pageControl.frame.height)
        //设置为可翻页的
        scrollView.isPagingEnabled = true
        
        
        //整个视图在监听这个事件（这个视图的代理） 拖动形式也可以实现
        //scrollView.delegate = self
        
        view1.frame.origin.x = 0
        view2.frame.origin.x = screenWidth
        view3.frame.origin.x = screenWidth*2
        //pageControl的初始页数
        pageControl.currentPage = 0

    }
    //检验scrollCiew确实Scroll了   改写了scrollViewDidScroll方法
    func scrollViewDidScroll(_ scrollView:UIScrollView)
    {
        let pageWidth = scrollView.frame.size.width
        //包含的位移    floor函数
        let page = floor((scrollView.contentOffset.x - pageWidth/2)/pageWidth)+1
        pageControl.currentPage = Int(page)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

