//
//  ViewController.swift
//  Realm Issue
//
//  Created by zhaoxin on 2020/7/21.
//  Copyright © 2020 zhaoxin. All rights reserved.
//

import Cocoa
import RealmSwift

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        run()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    private func run() {
//        let url = Bundle.main.url(forResource: "realm", withExtension: "db")!
//        let realm = try! Realm(fileURL: url)
        let realm = try! Realm()
        let id = "test"
        
        for i in 1...10 {
            let foo = Foo()
            foo.id = id
            foo.value = i
            
            try! realm.write {
                realm.add(foo, update: .all)
            }
        }
    }
}

