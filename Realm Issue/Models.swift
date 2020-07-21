//
//  Models.swift
//  Realm Issue
//
//  Created by zhaoxin on 2020/7/21.
//  Copyright © 2020 zhaoxin. All rights reserved.
//

import Foundation
import RealmSwift

class Foo:Object {
    @objc dynamic var id:String = ""
    @objc dynamic var value:Int = 0
    
    override class func primaryKey() -> String? {
        return "id"
    }
}
