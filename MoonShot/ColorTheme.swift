//
//  ColorTheme.swift
//  MoonShot
//
//  Created by Shah Md Imran Hossain on 16/4/23.
//

import Foundation
import SwiftUI

// color extension for shape style
extension ShapeStyle where Self == Color {
    static var darkBackground: Color {
        return Color(red: 0.1, green: 0.1, blue: 0.2)
    }
    
    static var lightBackground: Color {
        return Color(red: 0.2, green: 0.2, blue: 0.3)
    }
}
