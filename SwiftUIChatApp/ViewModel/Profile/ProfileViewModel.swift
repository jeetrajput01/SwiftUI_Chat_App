//
//  ProfileViewModel.swift
//  SwiftUIChatApp
//
//  Created by differenz147 on 26/10/21.
//

import Foundation

class ProfileViewModel: ObservableObject {
    
    @Published var currentUser = UserModel.getCurrentUserFromDefault()
    @Published var navigation:String? = nil
    @Published var showAlert = false
    
    private var homeVM = HomeViewModel()
}


//MARK: - Helper Method
extension ProfileViewModel {
    
    func logout() {
        homeVM.changeActivityStatus {
            do {
               
                try Auth.auth().signOut()
                UserModel.removeUserFromDefault()
                UserDefaults.isRegisteredUserLogin = false
                self.navigation = IdentifiableKeys.NavigationTags.kNavToLogin
                
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
}
