//
//  TodoController.swift
//  MyTodoList
//
//  Created by 加藤理絵 on 2018/04/23.
//  Copyright © 2018年 Rie Kato. All rights reserved.
//

import Foundation

class TodoController: NSObject, NSCoding {
    var todoTitle: String?
    var todoDone: Bool = false
    
    // コンストラクタ？
    override init() {
    }
    
    required init?(coder aDecoder: NSCoder) {
        todoTitle = aDecoder.decodeObject(forKey: "todoTitle") as? String
        // todoDone = aDecoder.decodeObject(forKey: "todoDone") -> Optional type 'Any?' cannot be used as a boolean; test for '!= nil' instead
        todoDone = (aDecoder.decodeObject(forKey: "todoDone") != nil)
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(todoTitle, forKey: "todoTitle")
        aCoder.encode(todoDone, forKey: "todoDone")
    }
}
