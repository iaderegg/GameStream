//
//  ContentView.swift
//  GameStream
//
//  Created by Iader Emir Garcia Gomez on 11/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            Spacer ()
            
            Color("Background").ignoresSafeArea()
            
            VStack {
                Image("appLogo").resizable().aspectRatio(contentMode: .fit).frame(width: 250).padding(.bottom, 42)
                
                InicioYRegistroView()
            }
        }
    }
}

struct InicioYRegistroView:View {
    
    @State var tipoInicioSesion = true
    
    var body: some View {
        VStack {
            HStack {
                
                Spacer()
                
                Button("INICIA SESIÓN") {
                    tipoInicioSesion = true
                }.foregroundColor(tipoInicioSesion ? .white : .gray)
                
                Spacer()
                
                Button("REGÍSTRATE") {
                    tipoInicioSesion = false
                }.foregroundColor(tipoInicioSesion ? .gray : .white)
                
                Spacer ()
            }
            
            Spacer(minLength: 42)
            
            if tipoInicioSesion == true {
                InicioSesionView()
            } else {
                RegistroView()
            }
        }
    }
}

struct InicioSesionView:View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Correo Electrónico").foregroundColor(Color("Dark-cian"))
            }
        }
    }
}

struct RegistroView:View {
    var body: some View {
        Text("Soy la vista de registro").foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Image("pantalla01").resizable()
        ContentView()
    }
}
