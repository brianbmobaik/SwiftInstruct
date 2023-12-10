/* These are mostly just colors for the UI */

import SwiftUI

enum Theme: String {
    // Colors from the Assets folder, Edit if you want a new color
    case bg_blue
    case bg_orange
    case bg_purple
    case bg_violet
    case blue_gray
    case gray
    case green
    case lavendar
    case orange
    case sky_blue
    case charcoal
    
    // Accent color to provide a high-contrast complement to the theme's main color
    var accentColor: Color {
        switch self {
        case .bg_blue, .bg_orange, .green, .lavendar, .orange, .sky_blue: return .black
        case .charcoal, .bg_purple, .bg_violet, .blue_gray, .gray: return .white
        }
    }
    
    // Initializes a color from the asset catalog
    var mainColor: Color {
        Color(rawValue)
    }
}
