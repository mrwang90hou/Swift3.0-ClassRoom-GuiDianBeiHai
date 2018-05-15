//
//  UserModel.swift
//  NSKeyedArchiver_student
//
//  Created by 王宁 on 2017/5/9.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//

import Foundation
class UserModel: NSObject,NSCoding {
    var userName:String?
    var pwd:String?
    override init()
    {
        
    }
    //序列化
    func encode(with aCoder:NSCoder)
    {
        //将上列属性序列号
        aCoder.encode(self.userName, forKey: "userName")
        aCoder.encode(self.pwd, forKey: "pwd")
        
    }
    //反序列化
    required init?(coder aDecoder: NSCoder) {
        super.init()
        self.userName = aDecoder.decodeObject(value(forKey: "username" as! String)
        self.pwd = aDecoder.decodeObject(value(forKey: "pwd") as! String
    }
}
