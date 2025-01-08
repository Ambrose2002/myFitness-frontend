//
//  UIColor+CustomColors.swift
//  myFitness-frontend
//
//  Created by Ambrose Blay on 1/7/25.
//

import Foundation
import UIKit

extension UIColor {
    
    static func fromHex(_ hex: String) -> UIColor {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00F00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    
    static let blue = UIColor.fromHex("a2d2ff")
    static let lightBlue = UIColor.fromHex("bde0fe")
    static let pink = UIColor.fromHex("ffafcc")
    static let lightPink = UIColor.fromHex("ffc8dd")
    static let lightPurple = UIColor.fromHex("cdb4db")
}
