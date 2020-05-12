//
//  PurpleViewController.swift
//  RetainCycleApp
//
//  Created by JK on 2020/05/11.
//  Copyright © 2020 codesquad. All rights reserved.
//

import UIKit

class PurpleViewController: UIViewController {
    static let NotificationSomething = Notification.Name("Purple.Something.Notification")

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func eventHandler(_ sender: Any) {
        NotificationCenter.default.post(name: Self.NotificationSomething, object: self)
    }
    
}
