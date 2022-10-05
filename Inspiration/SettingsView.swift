//
//  SettingsView.swift
//  Inspiration
//
//  Created by Rogerio Pires on 15/01/22.
//

import SwiftUI
import AVFoundation

struct SettingsView: View {
    
    @State var darkMode = false
    @State var alertSound = false
    var viewModel = ContentView()
    
       
    var body: some View {
        
        
        ZStack { //Stack principal
            
           // Color.black
            
            Form {
                Section(header: Text("SETINGS")){
                    HStack{
                        Image(systemName: "stop.fill")
                        Text("Dark Mode")
                        Spacer()
                        Toggle("", isOn: $darkMode)
                        //Toggle("", isOn: viewModel.$isNight)
                    }
                    
                    HStack{
                        Image(systemName: "speaker")
                        Text("Alert Sound")
                        Spacer()
                        Toggle("", isOn: $alertSound)
                        
                        
                    }
                }
                Section(header: Text("CONTACTS")){
                    HStack {
                        Image(systemName: "i.square.fill")
                        Button(action: {
                            UIApplication.shared.open(URL(string: "https://www.instagram.com/rogeriocpires/")!)
                        }) {
                            Text("Instagram")
                                .font(.system(size: 18, weight: .light))
                        }
                        Spacer()
                        Image(systemName: "link")
                    }
                    HStack {
                        Image(systemName: "mic.fill")
                        Button(action: {
                            UIApplication.shared.open(URL(string: "https://twitter.com/rogpires")!)
                        }) {
                            Text("Twitter")
                                .font(.system(size: 18, weight: .light))
                        }
                        Spacer()
                        Image(systemName: "link")
                    }
                    
                    HStack{
                        Image(systemName: "mail")
                        Button(action: {
                            let email = "rogeriocpires@hotmail.com"
                            UIApplication.shared.open(URL(string: "mailto:\(email)")!)
                            AudioServicesPlayAlertSound(SystemSoundID(1033))
                            
                        }) {
                            Text("e-mail")
                            
                        }
                        .font(.system(size: 18, weight: .light))
                        Spacer()
                        Image(systemName: "link")
                    }
                    
                }
                
                Section(header: Text("ABOUT")){
                    VStack {
                        Image("rogerio")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        //  .frame(width: 200, height: 200)
                            .clipShape(Circle())
                        //.shadow(radius: 10)
                        // .overlay(Circle().stroke(Color.red, lineWidth: 2))
                        Text(" Hello, My name is Rogerio, I work with mobile application development and I am a PY2EQ Amateur Radio, I live in Brazil.")
                            .font(.system(size: 17))
                          //  .foregroundColor(.black)
                    }
                }
            }
          //  .foregroundColor(Color.black)
          //  .background(Color.black)
            .ignoresSafeArea()
        }//:ZSTACK
     
        .navigationBarTitleDisplayMode(.inline) //diminue a distancia da barra de navegação
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
           .preferredColorScheme(.dark)
        SettingsView()
           .preferredColorScheme(.light)
        
    }
}

