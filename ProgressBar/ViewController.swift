//
//  ViewController.swift
//  ProgressBar
//
//  Created by Sergey Desyak on 06.06.2020.
//  Copyright © 2020 Sergey Desyak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let point1 = ProgressBar(frame: CGRect.init(
        x: 0, y: 200,
        width: 50,
        height: 50))
        point1.center.x = self.view.frame.width / 2 - 70
        point1.alpha = 0
        
        let point2 = ProgressBar(frame: CGRect.init(
        x: 0, y: 200,
        width: 50,
        height: 50))
        point2.center.x = self.view.frame.width / 2
        point2.alpha = 0
        
        let point3 = ProgressBar(frame: CGRect.init(
        x: 0, y: 200,
        width: 50,
        height: 50))
        point3.center.x = self.view.frame.width / 2 + 70
        point3.alpha = 0
        
        self.view.addSubview(point1)
        self.view.addSubview(point2)
        self.view.addSubview(point3)
        
        UIView.animateKeyframes(withDuration: 2.5, delay: 0, options: [ .repeat ], animations: {
        UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.4) {
        point1.alpha = 1
        
            }
        UIView.addKeyframe(withRelativeStartTime: 0.4, relativeDuration: 0.4) {
        point1.alpha = 0
            point2.alpha = 1
            }
            UIView.addKeyframe(withRelativeStartTime: 0.8, relativeDuration: 0.4) {
            point2.alpha = 0
                point3.alpha = 1
                }
        })
    }
    
    
    
    
    
    
}

