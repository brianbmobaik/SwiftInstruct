/* Header UI View */

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Hello!")
                Text("Your Name")
                    .font(.headerName)
            }
            .foregroundColor(Color("sky_blue"))
            .shadow(radius: 4)
            
            Spacer()
            
            Image("ic-AppLogo")
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
