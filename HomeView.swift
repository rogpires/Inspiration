//
//  HomeView.swift
//  Inspiration
//
//  Created by Rogerio Pires on 15/01/22.
//

import SwiftUI

struct HomeView: View {
    
    var textos: [Textos] = TextosLista.todosTextos
    
    var body: some View {
        
        
        
        ZStack {
            
            VStack {
                Text("Boa Noite!")
                    .font(Font.largeTitle.weight(.semibold))
                    .font(.system(size:30))
                
                    .foregroundColor(Color(hue: 0.385, saturation: 0.662, brightness: 0.461))
                
                TabView {
                    
                    ForEach(textos, id: \.id) { Textos in
                        
                        Text("\(Textos.textos) - \(Textos.autor)")
                           // .font(Font.largeTitle.weight(.semibold))
                            .font(.system(size:30))
                            .frame(maxWidth:340, maxHeight: 240)
                            .multilineTextAlignment(.center)
                            //.foregroundColor(Color(hue: 0.385, saturation: 0.662, brightness: 0.461))
                    }
                    
                    .padding()
                    
                    
                }// TABVIEW
                
                .frame(width: UIScreen.main.bounds.width, height: 400)
                .tabViewStyle(PageTabViewStyle())
                
              //  Divider()
                HStack {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .frame(width:30, height: 30)
                        .padding()
                        .foregroundColor(Color(hue: 0.385, saturation: 0.662, brightness: 0.461))
                    
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width:30, height: 30)
                        .padding()
                        .foregroundColor(Color(hue: 0.385, saturation: 0.662, brightness: 0.461))
                }// HSTACK
                
            }// VSTACK
            
            
        }// ZSTACK
       
        .ignoresSafeArea()
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
