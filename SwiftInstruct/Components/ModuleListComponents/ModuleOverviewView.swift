
import SwiftUI

struct ModuleOverviewView: View {
    var body: some View {
        ZStack {
            
            VStack(alignment: .leading) {
                
                Text("Module 1:\n")
                    .font(.moduleTitle)
                
                Text("Swift Basics")
                    .font(.moduleName)
                
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color("blupurp"))
                        .frame(width: 331, height: 100)
                        .opacity(0.8)
                    
                    Text("Some Description about the module will be written on this spot")
                        .multilineTextAlignment(.leading)
                        .font(.moduleDescription)
                }
            }
            .fontWeight(.semibold)
            .fontDesign(.rounded)
            .foregroundStyle(.white)
            .opacity(0.8)
            .fixedSize(horizontal: false, vertical: true)
            .frame(width: 180, height: 30)
        }
        .background(
            RoundedRectangle(cornerRadius: 16)
            .fill(Color("bg_violet"))
            .frame(width: 360, height: 210)
            .opacity(0.8)
        )
    }
}

#Preview {
    ModuleOverviewView()
}
