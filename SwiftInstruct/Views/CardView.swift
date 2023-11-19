/* Creates the Card View of the Modules */

import SwiftUI

struct CardView: View {
    let modules: Modules
    
    @ScaledMetric(relativeTo: .title) var paddingWidth = 14.5
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(modules.title)
                .font(.moduleTitle)
                .foregroundColor(.white)
                .accessibilityAddTraits(.isHeader)
            
            HStack(alignment: .center) {
                ProgressView(value: modules.progress)
                    .progressViewStyle(ModuleProgressBarViewStyle())
                
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.green)
            }
            
            Text("\(String(format: "%.1f", modules.progress * 100))% Completed")
                .font(.progressTitle)
                .foregroundColor(.orange)
        }
        .padding(paddingWidth)
        .background(RoundedRectangle(cornerRadius: 15, style: .continuous)
            .foregroundColor(modules.theme.mainColor)
            .frame(width: 360, height: 70))
        .padding(paddingWidth)
    }
}

struct CardView_Previews: PreviewProvider {
    static var modules = Modules.sampleModule[1]
    
    // Passing modules into ModulesView's Init
    static var previews: some View {
        CardView(modules: modules)
    }
}
