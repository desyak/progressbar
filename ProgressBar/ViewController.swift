//
//  ViewController.swift
//  ProgressBar
//
//  Created by Sergey Desyak on 06.06.2020.
//  Copyright © 2020 Sergey Desyak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var testView: UIView!
    
    let layer = CAShapeLayer()
    
    
    @IBAction func animation(_ sender: Any) {
        
        
        let animationsGroup = CAAnimationGroup()
        animationsGroup.duration = 3
        
        let strokeStartAnimation = CABasicAnimation(keyPath: "strokeStart")
        strokeStartAnimation.fromValue = 0
        strokeStartAnimation.toValue = 1
        
        let strokeEndAnimation = CABasicAnimation(keyPath: "strokeEnd")
        strokeEndAnimation.timeOffset = CFTimeInterval(0.3)
        strokeEndAnimation.fromValue = 0
        strokeEndAnimation.toValue = 1.2

        
        animationsGroup.animations = [strokeStartAnimation, strokeEndAnimation]
        animationsGroup.repeatCount = .infinity
        layer.add(animationsGroup, forKey: nil)
        print("start anim")
        
       
        
       
            
       
        
        let cloud = UIBezierPath()
        
        cloud.move(to: CGPoint(x: 101.17, y: 16.89))
        cloud.addLine(to: CGPoint(x: 101.24, y: 17.04))
        cloud.addCurve(to: CGPoint(x: 102.5, y: 17), controlPoint1: CGPoint(x: 101.66, y: 17.01), controlPoint2: CGPoint(x: 102.08, y: 17))
        cloud.addCurve(to: CGPoint(x: 121, y: 34.5), controlPoint1: CGPoint(x: 112.72, y: 17), controlPoint2: CGPoint(x: 121, y: 24.84))
        cloud.addCurve(to: CGPoint(x: 120.92, y: 36.15), controlPoint1: CGPoint(x: 121, y: 35.06), controlPoint2: CGPoint(x: 120.97, y: 35.61))
        cloud.addCurve(to: CGPoint(x: 137, y: 53.5), controlPoint1: CGPoint(x: 129.99, y: 37.27), controlPoint2: CGPoint(x: 137, y: 44.61))
        cloud.addCurve(to: CGPoint(x: 118.5, y: 71), controlPoint1: CGPoint(x: 137, y: 63.16), controlPoint2: CGPoint(x: 128.72, y: 71))
        cloud.addCurve(to: CGPoint(x: 103, y: 63.06), controlPoint1: CGPoint(x: 112.01, y: 71), controlPoint2: CGPoint(x: 106.3, y: 67.84))
        cloud.addCurve(to: CGPoint(x: 87.5, y: 71), controlPoint1: CGPoint(x: 99.7, y: 67.84), controlPoint2: CGPoint(x: 93.99, y: 71))
        cloud.addCurve(to: CGPoint(x: 72.5, y: 63.74), controlPoint1: CGPoint(x: 81.33, y: 71), controlPoint2: CGPoint(x: 75.86, y: 68.14))
        cloud.addCurve(to: CGPoint(x: 57.5, y: 71), controlPoint1: CGPoint(x: 69.14, y: 68.14), controlPoint2: CGPoint(x: 63.67, y: 71))
        cloud.addCurve(to: CGPoint(x: 39, y: 53.5), controlPoint1: CGPoint(x: 47.28, y: 71), controlPoint2: CGPoint(x: 39, y: 63.16))
        cloud.addCurve(to: CGPoint(x: 51.87, y: 36.82), controlPoint1: CGPoint(x: 39, y: 45.69), controlPoint2: CGPoint(x: 44.41, y: 39.08))
        cloud.addLine(to: CGPoint(x: 52.15, y: 36.74))
        cloud.addCurve(to: CGPoint(x: 52, y: 34.5), controlPoint1: CGPoint(x: 52.05, y: 36.01), controlPoint2: CGPoint(x: 52, y: 35.26))
        cloud.addCurve(to: CGPoint(x: 57.11, y: 22.43), controlPoint1: CGPoint(x: 52, y: 29.82), controlPoint2: CGPoint(x: 53.94, y: 25.57))
        cloud.addCurve(to: CGPoint(x: 67.68, y: 17.2), controlPoint1: CGPoint(x: 59.86, y: 19.69), controlPoint2: CGPoint(x: 63.55, y: 17.8))
        cloud.addCurve(to: CGPoint(x: 68.05, y: 16.49), controlPoint1: CGPoint(x: 67.8, y: 16.96), controlPoint2: CGPoint(x: 67.92, y: 16.72))
        cloud.addCurve(to: CGPoint(x: 71.6, y: 11.96), controlPoint1: CGPoint(x: 68.97, y: 14.8), controlPoint2: CGPoint(x: 70.17, y: 13.27))
        cloud.addCurve(to: CGPoint(x: 84.5, y: 7), controlPoint1: CGPoint(x: 74.93, y: 8.89), controlPoint2: CGPoint(x: 79.48, y: 7))
        cloud.addCurve(to: CGPoint(x: 101.17, y: 16.89), controlPoint1: CGPoint(x: 91.84, y: 7), controlPoint2: CGPoint(x: 98.17, y: 11.04))
        cloud.close()
        
        
        layer.path = cloud.cgPath
        layer.lineWidth = 8
        layer.strokeColor = UIColor.blue.cgColor
        layer.lineCap = .round
        layer.fillColor = UIColor.clear.cgColor
        testView.layer.addSublayer(layer)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
  
        
        
        
//        let point1 = ProgressBar(frame: CGRect.init(
//        x: 0, y: 200,
//        width: 50,
//        height: 50))
//        point1.center.x = self.view.frame.width / 2 - 70
//        point1.alpha = 0
//
//        let point2 = ProgressBar(frame: CGRect.init(
//        x: 0, y: 200,
//        width: 50,
//        height: 50))
//        point2.center.x = self.view.frame.width / 2
//        point2.alpha = 0
//
//        let point3 = ProgressBar(frame: CGRect.init(
//        x: 0, y: 200,
//        width: 50,
//        height: 50))
//        point3.center.x = self.view.frame.width / 2 + 70
//        point3.alpha = 0
//
//        self.view.addSubview(point1)
//        self.view.addSubview(point2)
//        self.view.addSubview(point3)
//
//        UIView.animateKeyframes(withDuration: 2.5, delay: 0, options: [ .repeat ], animations: {
//        UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.4) {
//        point1.alpha = 1
//
//            }
//        UIView.addKeyframe(withRelativeStartTime: 0.4, relativeDuration: 0.4) {
//        point1.alpha = 0
//            point2.alpha = 1
//            }
//            UIView.addKeyframe(withRelativeStartTime: 0.8, relativeDuration: 0.4) {
//            point2.alpha = 0
//                point3.alpha = 1
//                }
//        })
    }
    
    
    
    
    
    
}

