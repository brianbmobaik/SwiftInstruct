import SwiftUI

struct LogInView: View {
    @State var email = ""
    @State var password = ""
    @State var wrongEmail = 0
    @State var wrongPassword = 0
    @ObservedObject var viewModel: AppViewModel
    
    var body: some View {
        ZStack {
            BackgroundView(viewModel: viewModel)
                .edgesIgnoringSafeArea(.all)

            VStack(alignment: .leading) {
                Text("Welcome to SwiftInstruct")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()

                TextField("Email", text: $email)
                    .padding()
                    .frame(width: 350, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongEmail))
                    .offset(x: 17)
                
                TextField("Password", text: $password)
                    .padding()
                    .frame(width: 350, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongEmail))
                    .offset(x: 2)
                    .padding()
                
                Button("Log In"){    
                }
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50)
                    .background(Color.black)
                    .cornerRadius(10)
                    .offset(x: 120)
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
