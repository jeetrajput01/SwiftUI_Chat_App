//
//  ContentView.swift
//  SwiftUIChatApp
//
//  Created by differenz147 on 26/10/21.
//

import SwiftUI


struct ContentView: View {
    @State private var tabSelection = 1

    var body: some View {
        NavigationView {
            TabView(selection: $tabSelection) {
                FirstView()
                    .tabItem {
                        Text("1")
                    }
                    .tag(1)
                SecondView()
                    .tabItem {
                        Text("2")
                    }
                    .tag(2)
            }
            .hideNavigationBar()

        }
    }
}

struct FirstView: View {
    var body: some View {
        NavigationLink(destination: Text("Some detail link")) {
            Text("Go to...")
        }
    }
}

struct SecondView: View {
    var body: some View {
        Text("We are in the SecondView")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
