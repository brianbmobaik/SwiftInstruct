/* This is to make our lives easier by setting up
 * our Fonts before we use them for our UI */

import Foundation
import SwiftUI

extension Font {
    static var appTitle: Font {
        return Font.custom("Handjet-Medium", size: 48)
    }
    
    static var logRegTitle: Font {
        return Font.custom("Handjet-Medium", size: 20)
    }
    
    static var moduleTitle: Font {
        return Font.custom("Roboto-Medium", size: 16)
    }
    
    static var progressTitle: Font {
        return Font.custom("Roboto-Medium", size: 6)
    }
    
    static var headerName: Font {
        return Font.custom("Roboto-Medium", size: 24)
    }
}
