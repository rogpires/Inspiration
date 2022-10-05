//
//  Texts.swift
//  Inspiration
//
//  Created by Rogerio Pires on 15/01/22.
//


import SwiftUI

struct Textos: Identifiable {
    let id = UUID()
    let textos: String
    let autor: String
    
}

struct TextosLista  {
    
    static let todosTextos = [
        Textos ( textos: "Lembre sempre que a sua vontade de triunfar é mais importante do que qualquer outra coisa",
                 autor: "Abraham Lincoln"
               ),
        
        
        Textos ( textos: "O verdadeiro heroísmo consiste em persistir por mais um momento, quando tudo parece perdido",
                 autor: "W. F. Grenfel"
               ),
        
        Textos ( textos: "Na prosperidade, nossos amigos nos conhecem; na adversidade, nós é que conhecemos nossos amigos.",
                 autor: "Churton Collins"
               ),
    ]
    
}
