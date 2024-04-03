//
//  ContentView.swift
//  Carta
//
//  Created by Marco on 2/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: VistaPedido(categoriaActual: .mediterranea)){
                VistaTipoComida(nombreImagen: "mediterranea", nombreComida: "MEDITERRÁNEA")
                }
                NavigationLink(destination: VistaPedido(categoriaActual: .arabe)){                VistaTipoComida(nombreImagen: "arabe", nombreComida: "ÁRABE")
                    
                }
                
                NavigationLink(destination: VistaPedido(categoriaActual: .asiatica)){                VistaTipoComida(nombreImagen: "asiatica", nombreComida: "ASIÁTICA")
                
                }
                    
                NavigationLink(destination: VistaPedido(categoriaActual: .hindu)){
                VistaTipoComida(nombreImagen: "indu", nombreComida: "HINDÚ")
                    
                }
            }
            
            .navigationTitle("Haga su pedido:")
        }
    }
}
struct VistaTipoComida : View{
    
    var nombreImagen : String
    var nombreComida : String
    var body: some View {
        HStack{
            
            Spacer()
        
        ZStack{
            Image(nombreImagen)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 100)
                .clipped()
                .cornerRadius(20.0)
            Text(nombreComida)
                .font(.custom("Helvetica-Medium", size: 28))
                .bold()
                .foregroundColor(.white)
            
        }
            Spacer()
            
        }
        .padding(.top,5)
        .padding(.bottom,5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
