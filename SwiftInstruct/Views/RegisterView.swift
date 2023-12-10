import SwiftUI

struct RegisterView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var password = ""
    @ObservedObject var viewModel: AppViewModel

    var body: some View {
        ZStack {
            BackgroundView(viewModel: viewModel)
                .edgesIgnoringSafeArea(.all)

            VStack {
                VStack(alignment: .leading) {
                    Text("Register:")
                        .font(.appTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding()

                    TextField("First Name", text: $firstName)
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .offset(y: -10)

                    TextField("Last Name", text: $lastName)
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .offset(y: -5)

                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 350, height: 50)
                        .keyboardType(.emailAddress)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .offset(y: 0)

                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .offset(y: 5)

                    Button("Register") {
                        // Perform registration logic here
                        print("First Name: \(firstName)")
                        print("Last Name: \(lastName)")
                        print("Email: \(email)")
                        print("Password: \(password)")

                        // You can add further logic for handling registration
                    }
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 150, height: 50)
                    .background(Color.black)
                    .cornerRadius(10)
                    .offset(x: 90)
                    .offset(y: 20)
                }
                .padding()
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(viewModel: AppViewModel())
    }
}
