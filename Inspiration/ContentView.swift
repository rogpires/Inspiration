//
//  ContentView.swift
//  Inspiration
//
//  Created by Rogerio Pires on 02/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
     
        
      
      
        TabView {
            HomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                        .foregroundColor(Color.green)
                }
            
            
            HomeView()
                .tabItem{
                    Image(systemName: "person")
                    Text("Acount")
                        .foregroundColor(Color.green)
                }
            
            SettingsView()
                .tabItem{
                    Image(systemName: "gear")
                    Text("Acount")
                        .foregroundColor(Color.green)
                }
            
        }
        
       
        .accentColor(.green)
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}

