//
//  ProfileView.swift
//  SwiftUIChatApp
//
//  Created by differenz147 on 26/10/21.
//

import SwiftUI

//MARK: - body
struct ProfileView: View {
    
    //MARK: - Properties
    @StateObject var profileVM = ProfileViewModel()
    
    var body: some View {
        NavigationView {
            
            VStack(spacing: 10) {
                
                NavigationLink("", destination: LogInView(loginVM: LoginViewModel()), tag: IdentifiableKeys.NavigationTags.kNavToLogin, selection: $profileVM.navigation)
        
                Text("\(profileVM.currentUser?.firstName.prefix(1).uppercased() ?? "F")\(profileVM.currentUser?.lastName.prefix(1).uppercased() ?? "L")" )
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                    .frame(width: ScreenSize.SCREEN_WIDTH*0.35, height: ScreenSize.SCREEN_WIDTH*0.35, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                    .background(Color.random)
                    .clipShape(Circle())
                    .padding(.all, 10)
                
                Text("\(profileVM.currentUser?.firstName ?? "first Name") \(profileVM.currentUser?.lastName ?? "last name")")
                    .font(.title2)
                    .bold()
                    .frame(width: ScreenSize.SCREEN_WIDTH*0.85)
                
                Text("\(profileVM.currentUser?.email ?? "email")")
                    .font(.title3)
                    .frame(width: ScreenSize.SCREEN_WIDTH*0.85)
                    .padding(.top, -10)
                
                Spacer()
                
                Button(action: {
                    profileVM.showAlert.toggle()
                }, label: {
                    Text("Logout")
                        .bold()
                        .font(.system(size: 16))
                        .foregroundColor(Color("menu"))
                        .frame(width: UIScreen.main.bounds.width*0.89, height: UIScreen.main.bounds.height*0.06, alignment: .center)
                        
                })
                .border(Color("menu"), width: 1)
                .padding(.bottom, 30)
              
                
                
            }
            .alert(isPresented: $profileVM.showAlert, content: {
                
                Alert(title: Text("Logout"), message: Text("Are you sure ?"), primaryButton: Alert.Button.cancel(Text("cancel"), action: {
                    print("cancel logout")
                }), secondaryButton: Alert.Button.default(Text("ok"), action: {
                    profileVM.logout()

                }))
                
            })
            
        }
        .navigationBarHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - Preview
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

