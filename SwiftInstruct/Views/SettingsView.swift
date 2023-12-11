

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var authModel: AuthorizeModel
    
    var body: some View {
        ZStack {
            BackgroundView()
        if let user = authModel.currentUser {
            List {
                    /** User Info **/
                    Section {
                        HStack {
                            VStack(alignment: .leading, spacing: 4) {
                                Text(user.fullname)
//                                Text("Test Test")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .padding(.top, 4)
                                    .foregroundStyle(.white)
                                
                                Text(user.email)
//                                Text("test@test.com")
                                    .font(.footnote)
                                    .foregroundStyle(.yellow)
                            }
                            
                            Spacer()
                            
                            Divider()
                                .padding()
                            
                            Text(user.initials)
//                            Text("TT")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                                .frame(width: 72, height: 72)
                                .background(Color("bg_orange")
                                    .opacity(0.5))
                                .clipShape(Circle())
                        }
                    }
                    .listRowBackground(Color("sky_blue")
                        .opacity(0.5))
                    .edgesIgnoringSafeArea(.all)
                    /** User Info **/
                    
                    /** General Settings **/
                    Section("General") {
                        HStack {
                            Text("Brightness")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(4)
                            
                            Spacer()
                            
                            Image(systemName: "sun.max.fill")
                                .foregroundStyle(.yellow)
                        }
                    }
                    .foregroundStyle(.black)
                    /** General Settings **/
                
                Section("Sign Out") {
                    Button {
                        authModel.logOut()
                    } label: {
                        HStack {
                            Text("Sign Out")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(4)
                            
                            Spacer()
                            
                            Image(systemName: "power.circle.fill")
                                .foregroundStyle(.red)
                        }
                    }
                }
                }
            .scrollContentBackground(.hidden)
        }
        }
    }
}

#Preview {
    SettingsView()
}
