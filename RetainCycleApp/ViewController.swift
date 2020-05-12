//
//  ViewController.swift
//  RetainCycleApp
//
//  Created by JK on 2020/05/11.
//  Copyright © 2020 codesquad. All rights reserved.
//

import UIKit

class Robot : NSObject {
    var name : String
    var nemesis : Robot?
    var model : Int
    
    override init() {
        name = ""
        nemesis = nil
        model = 0
    }

    deinit {
        print("robot was deinit")
    }
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func robotButtonTouched(_ sender: Any) {
        var robot1 : Robot? = Robot()
        var robot2 : Robot? = Robot()

        robot1?.nemesis = robot2
        robot2?.nemesis = robot1

        robot1 = nil
        robot2 = nil
    }
    
}

