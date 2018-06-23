//
//  Colors+Custom.swift
//  HackathonChallenge
//
//  Created by Guilherme Antunes on 23/06/18.
//  Copyright © 2018 Guilherme Antunes. All rights reserved.
//

import UIKit

extension UIColor {
    
    static var healthyGreen = { () -> UIColor? in
        if #available(iOS 11.0, *) {
            return UIColor(named: "Healthy Green")
        } else {
            return UIColor(displayP3Red: 0.369, green: 0.451, blue: 0.078, alpha: 1.0)
        }
    }
    
    static var healthyRed = { () -> UIColor? in
        if #available(iOS 11.0, *) {
            return UIColor(named: "Healthy Red")
        } else {
            return UIColor(displayP3Red: 0.749, green: 0.259, blue: 0.149, alpha: 1.0)
        }
    }
    
    static var healthyYellow = { () -> UIColor? in
        if #available(iOS 11.0, *) {
            return UIColor(named: "Healthy Yellow")
        } else {
            return UIColor(displayP3Red: 0.851, green: 0.710, blue: 0.290, alpha: 1.0)
        }
    }
    
    static var healthyDarkerYellow = { () -> UIColor? in
        if #available(iOS 11.0, *) {
            return UIColor(named: "Healthy Darker Yellow")
        } else {
            return UIColor(displayP3Red: 0.749, green: 0.557, blue: 0.204, alpha: 1.0)
        }
    }
    
    static var healthyBrown = { () -> UIColor? in
        if #available(iOS 11.0, *) {
            return UIColor(named: "Healthy Brown")
        } else {
            return UIColor(displayP3Red: 0.549, green: 0.290, blue: 0.137, alpha: 1.0)
        }
    }
    
}
