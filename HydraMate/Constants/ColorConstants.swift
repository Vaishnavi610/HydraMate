//
//  ColorConstants.swift
//  HydraMate
//
//  Created by vaishnavi Acharekar on 15/03/24.
//

import Foundation
import SwiftUI


extension Color {
    
    static let primaryBlueColor = Color(hexString: "#00B4D8")
    static let secondaryBlueColor = Color(hexString: "#58CFE3")
    static let lightBlueColor = Color(hexString: "#66CBDC")
    static let shadowBallColor = Color(hexString: "#ADE8F4")
    
    static let subHeadlineTextColor = Color(hexString: "#717171")
    static let blackColor = Color(hexString: "#000000")
    static let screenBackgroundColor = Color(hexString: "#F1F1F1")
}





public extension Color{
    init(hexString: String) {
          let hexString: String = (hexString as NSString).trimmingCharacters(in: .whitespacesAndNewlines)
          let scanner = Scanner(string: hexString)

          if hexString.hasPrefix("#") {
              scanner.scanLocation = 1
          }
          var color: UInt32 = 0
          scanner.scanHexInt32(&color)

          let mask = 0x000000FF
          let rPortion = Int(color >> 16) & mask
          let gPortion = Int(color >> 8) & mask
          let bPortion = Int(color) & mask

          let red = Double(rPortion) / 255.0
          let green = Double(gPortion) / 255.0
          let blue = Double(bPortion) / 255.0
          self.init(red: red, green: green, blue: blue)
      }
    
}
