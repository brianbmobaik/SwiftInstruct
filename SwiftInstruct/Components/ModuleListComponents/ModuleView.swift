/* Creates the Card View of the Modules */

import SwiftUI

struct ModuleView: View {
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
                Image(systemName: modules.progressCheck)
                    .foregroundColor(modules.progressTheme)
            }
            
            // Progress Percent Values
            Text("\(String(format: "%.1f", modules.progress * 100))% Completed")
                .font(.progressTitle)
                .foregroundColor(.orange)
        }
    }
}

struct ModuleView_Previews: PreviewProvider {
    static var modules = Modules.sampleModule[1]
    
    // Passing modules into ModulesView's Init
    static var previews: some View {
        ModuleView(modules: modules)
    }
}
