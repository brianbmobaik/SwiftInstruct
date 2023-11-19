/* Styling the Progress Bar */

import SwiftUI

// Styling the Progress Bar
struct ModuleProgressBarViewStyle: ProgressViewStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 300)
                .fill(Color("gray"))
                .frame(height: 15)
            ProgressView(configuration)
                .overlay(LinearGradient(gradient: Gradient(colors: [Color("bg_orange"), Color("sky_blue")]),
                                   startPoint: .leading,
                                   endPoint: .trailing))
                .mask(ProgressView(configuration))
                .frame(height: 12)
                .padding(.horizontal)
        }
    }
}

struct ModuleProgressViewStyle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(value: 10)
            .progressViewStyle(ModuleProgressBarViewStyle())
            .previewLayout(.sizeThatFits)
    }
}
