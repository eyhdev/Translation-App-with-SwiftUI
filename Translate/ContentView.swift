//
//  ContentView.swift
//  Translate
//
//  Created by eyh.mac on 6.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
           
           TranslationView()
                .tabItem {
                    Image(systemName: "textformat")
                    Text("Home")
                }
            
            Text("Favorites")
                .tabItem {
                    Image(systemName: "mic.fill")
                    Text("Mic")
                }
            
            Text("Profile")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
