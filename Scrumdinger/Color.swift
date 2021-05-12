//
//  Color.swift
//  Scrumdinger
//
//  Created by Fabian Kropfhamer on 12.05.21.
//

import SwiftUI


public func accessibleFontColor(color: Color) -> Color {
    var red: CGFloat = 0
    var green: CGFloat = 0
    var blue: CGFloat = 0
    UIColor(color).getRed(&red, green:  &green, blue: &blue, alpha: nil)
    return isLightColor(red: red, green: green, blue: blue) ? .black : .white
}

private func isLightColor(red: CGFloat, green: CGFloat, blue: CGFloat) -> Bool {
    let lightRed = red > 0.65
    let lightGreen = green > 0.65
    let lightBlue = blue > 0.65

    let lightness = [lightRed, lightGreen, lightBlue].reduce(0) { $1 ? $0 + 1 : $0 }
    return lightness >= 2
}

public func randomColor() -> Color {
    let red = Double.random(in: 0...1)
    let green = Double.random(in: 0...1)
    let blue = Double.random(in: 0...1)
    return Color(.sRGB ,red: red, green: green, blue: blue, opacity: 1)
}
