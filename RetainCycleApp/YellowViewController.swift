//
//  YellowViewController.swift
//  RetainCycleApp
//
//  Created by JK on 2020/05/11.
//  Copyright © 2020 codesquad. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {
    @IBOutlet weak var eventButton: UIButton!
    private var scrollTimerSource : DispatchSourceTimer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.main)

    override func viewDidLoad() {
        super.viewDidLoad()

        scrollTimerSource.schedule(deadline: DispatchTime.now(), repeating: .milliseconds(1000))
        scrollTimerSource.setEventHandler(handler: {
                var frame = self.eventButton.frame
                frame = CGRect(x: frame.origin.x, y: frame.origin.y + 10, width: frame.size.width, height: frame.size.height)
                self.eventButton.frame = frame
        })
        scrollTimerSource.activate()
    }
    
    @IBAction func eventHandler(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
