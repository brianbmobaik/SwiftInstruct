import SwiftUI

struct LogInView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var wrongEmail = 0
    @State private var wrongPassword = 0
    @ObservedObject var viewModel: AppViewModel
    
    var body: some View {
        ZStack {
            BackgroundView(viewModel: viewModel)
                .edgesIgnoringSafeArea(.all)
        
                
                VStack(alignment: .leading) {
                    Text("Welcome to SwiftInstruct")
                        .font(.appTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding()
                    
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongEmail))
                        .offset(x: 15)
                    
                    TextField("Password", text: $password)
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                        .offset(y: -10)
                        .padding()
                    
                    Button("Log In") {
                        // Add login logic here
                    }
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50)
                    .background(Color.black)
                    .cornerRadius(10)
                    .offset(x: 115)
                }
                .padding()
            }
        }
    }


struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView(viewModel: AppViewModel())
    }
}
