//
//  UIColorExtension.swift
//  TextAnimTry
//
//  Created by Omar Alqabbani on 7/5/19.
//  Copyright © 2019 OmarALqabbani. All rights reserved.
//

import UIKit

extension UIColor {
    static private func rgb(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor{
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
    static var backgroundColor = rgb(r: 0, g: 118, b: 255)
    
}
