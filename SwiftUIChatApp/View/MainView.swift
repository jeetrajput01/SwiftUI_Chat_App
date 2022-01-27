//
//  MainView.swift
//  SwiftUIChatApp
//
//  Created by differenz147 on 26/10/21.
//

import SwiftUI



struct MainView: View {
    
    @State private var tabSelection = 1
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            ZStack {
                TabView(selection: $tabSelection) {
                    HomeView()
                        .tabItem {
                            Image(systemName: "house")
                            Text("Home")
                        }
                        .tag(1)
                        .hideNavigationBar()
                       
                    ChatUserListView(ChatListVM: ChatUserListViewModel())
                        .tabItem {
                            Image(systemName: "square.and.arrow.up")
                            Text("Chat")
                        }
                        .tag(2)
                        .hideNavigationBar()
                    GroupListView()
                        .tabItem {
                            Image(systemName: "person.3")
                            Text("group")
                        }
                        .tag(3)
                        .hideNavigationBar()
                    ProfileView()
                        .tabItem {
                            Image(systemName: "person.crop.circle")
                            Text("profile")
                        }
                        .tag(4)
                        .hideNavigationBar()
                }
                .accentColor(Color("menu"))
                
                
                
            }
            .hideNavigationBar()
        }
        .hideNavigationBar()
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

