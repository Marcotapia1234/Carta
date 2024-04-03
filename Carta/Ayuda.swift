//
//  Ayuda.swift
//  Carta
//
//  Created by Marco on 2/4/24.
//

import Foundation

enum Categorias{
case mediterranea
case arabe
case asiatica
case hindu
    
}
func filtrarDatos(by categoria : Categorias) -> [Comida]{
    
    var arrayFiltrar = [Comida]() //inicializa array
    for comida in menu {
        if comida.categoria == categoria{
            arrayFiltrar.append(comida)
    }
    
}
    return arrayFiltrar
}
