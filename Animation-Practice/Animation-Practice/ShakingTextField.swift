//
//  ShakingTextField.swift
//  Animation-Practice
//
//  Created by The Guest Family on 6/11/17.
//  Copyright © 2017 AlphaApplications. All rights reserved.
//

import UIKit

class ShakingTextField: UITextField {

    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = CGPoint(x: self.center.x - 10, y: self.center.y)
        animation.toValue = CGPoint(x: self.center.x + 10, y: self.center.y)
        
        self.layer.add(animation, forKey: "position")
    }

}
