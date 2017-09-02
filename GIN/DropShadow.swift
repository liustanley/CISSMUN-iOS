//
//  DropShadow.swift
//  CISSMUN
//
//  Created by Stanley Liu on 9/1/17.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class DropShadow: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func layoutSubviews()
    {
        super.layoutSubviews()
        
        let shadowPath = UIBezierPath(rect: bounds)
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        layer.shadowOpacity = 0.3
        layer.shadowPath = shadowPath.cgPath
    }

}
