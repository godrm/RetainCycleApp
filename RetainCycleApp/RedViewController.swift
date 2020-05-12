//
//  RedViewController.swift
//  RetainCycleApp
//
//  Created by JK on 2020/05/12.
//  Copyright © 2020 codesquad. All rights reserved.
//

import UIKit

class RedViewController: UIViewController, CustomDelegate {
    
    @IBOutlet weak var orangeView: CustomView!
    @IBOutlet weak var pushButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        orangeView.delegate = self
    }

    func foo(_ value: Int) {
        pushButton.isEnabled = true
    }
    
    @IBAction func pushButtonTouched(_ sender: Any) {
        pushButton.isEnabled = false
        orangeView.openValue += 1
    }
    
}
