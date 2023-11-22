/* Creates the Card View of the Modules */

import SwiftUI

struct CardView: View {
    let modules: Modules
        
    var body: some View {
        // Veritcal Stack to Stack elements on Vertically
        VStack(alignment: .leading) {
            
            // Title of the Module
            Text(modules.title)
                .font(.moduleTitle)
                .foregroundColor(.white)
                .accessibilityAddTraits(.isHeader)
                .scaledToFit()
            
            // Horizontal Stack to stack elements on Horizontally
            HStack(alignment: .center) {
                // Progress Bar
                ProgressView(value: modules.progress)
                    .progressViewStyle(ModuleProgressBarViewStyle())
                
                // Progress Checks
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.green)
            }
            
            // Progress Percent Values
            Text("\(String(format: "%.1f", modules.progress * 100))% Completed")
                .font(.progressTitle)
                .foregroundColor(.orange)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var modules = Modules.sampleModule[1]
    
    // Passing modules into ModulesView's Init
    static var previews: some View {
        CardView(modules: modules)
    }
}
