//
//  CloudView.swift
//  ProgressBar
//
//  Created by Sergey Desyak on 12.06.2020.
//  Copyright © 2020 Sergey Desyak. All rights reserved.
//

import UIKit

class CloudView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.yellow
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        guard let context = UIGraphicsGetCurrentContext() else { return }
        context.setLineWidth(2)
        context.setStrokeColor(UIColor.blue.cgColor)
        
        let cloud = UIBezierPath()
        
        let sideOne = rect.width * 0.2
        let sideTwo = rect.height * 0.15
        let cloudRadius = sqrt(sideOne*sideOne + sideTwo*sideTwo)/2
        
        context.addArc(center: CGPoint(x: rect.width * 0.50, y: rect.height * 0.25), radius: cloudRadius, startAngle: CGFloat(0 * CGFloat.pi / 180), endAngle: CGFloat(180 * CGFloat.pi / 180), clockwise: true)
        context.addArc(center: CGPoint(x: rect.width * 0.50 - cloudRadius, y: rect.height * 0.25 + cloudRadius), radius: cloudRadius, startAngle: CGFloat(270 * CGFloat.pi / 180), endAngle: CGFloat(180 * CGFloat.pi / 180), clockwise: true)
        context.addArc(center: CGPoint(x: rect.width * 0.50 - 2*cloudRadius, y: rect.height * 0.25 + 2*cloudRadius), radius: cloudRadius, startAngle: CGFloat(270 * CGFloat.pi / 180), endAngle: CGFloat(90 * CGFloat.pi / 180), clockwise: true)
        context.addLine(to: CGPoint(x: rect.width * 0.50, y: rect.height * 0.25 + 3*cloudRadius  ))
       
        context.addArc(center: CGPoint(x: rect.width * 0.50 + 2*cloudRadius, y: rect.height * 0.25 + 2*cloudRadius), radius: cloudRadius, startAngle: CGFloat(90 * CGFloat.pi / 180), endAngle: CGFloat(270 * CGFloat.pi / 180), clockwise: true)
        context.addArc(center: CGPoint(x: rect.width * 0.50 + cloudRadius, y: rect.height * 0.25 + cloudRadius), radius: cloudRadius, startAngle: CGFloat(0 * CGFloat.pi / 180), endAngle: CGFloat(270 * CGFloat.pi / 180), clockwise: true)
        

        
        
       
        
        
        //context.closePath()
        context.addPath(cloud.cgPath)
        context.strokePath()
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
