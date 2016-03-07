//
//  Pizza.swift
//  PizzaUno
//
//  Created by Juan Jose Renteria on 03/03/16.
//  Copyright © 2016 Juan Jose Renteria. All rights reserved.
//

import Foundation


enum Tamaños: String {
    case chica = "Chica"
    case mediana = "Mediana"
    case grande = "Grande"
}


enum TipoMasa: String {
    case delgada = "Delgada"
    case crujiente = "Crujiente"
    case gruesa = "Gruesa"
}


enum TipoQueso: String {
    case mozarela = "Mozarela"
    case cheddar = "Cheddar"
    case parmesano = "Parmesano"
    case sinqueso = "Sin queso"
}


enum Ingredientes: String {
    case Jamón = "Jamón"
    case Pepperoni = "Pepperoni"
    case Pavo = "Pavo"
    case Salchicha = "Salchicha"
    case Aceituna = "Aceituna"
    case Cebolla = "Cebolla"
    case Pimiento = "Pimiento"
    case Piña = "Piña"
    case Anchoa = "Anchoa"
    case Pollo = "Pollo"
    
}


class Pizza {
    var tamaño: Tamaños?
    var tipoMasa: TipoMasa?
    var tipoQueso: TipoQueso?
    var ingredientes: [Ingredientes] = []
    
    
    
    func descripcion() -> String {
        var contenidoPiza = ""
        tamaño?.rawValue
        if tamaño != nil {
            contenidoPiza = "Tamaño: \(tamaño!.rawValue)\n\n"
        } else  {
            contenidoPiza = "Tamaño: \n\n"
        }
        
        if tipoMasa != nil {
            contenidoPiza += "Tipo de masa: \(tipoMasa!.rawValue)\n\n"
        } else {
            contenidoPiza += "Tipo de masa \n\n"
        }
        
        if tipoQueso != nil {
            contenidoPiza += "Tipo de queso: \(tipoQueso!.rawValue)\n\n"
        } else {
            contenidoPiza += "Tipo de queso \n\n"
        }
        
        contenidoPiza += "\(ingredientes.count) Ingredientes: \n\n"
        for ingrediente in ingredientes {
            contenidoPiza += "\(ingrediente.rawValue) \n"
        }
        return contenidoPiza
        
    }
    
    //Verifica que la pizza tenga asignadas el tamaño, masa, queso y por lo menos 1 ingrediente
    func validarPizza() -> Bool  {
        
        let pizzaValida = ( tamaño != nil ) && ( tipoMasa != nil ) && ( tipoQueso != nil ) && ( ingredientes.count > 0 )
        return pizzaValida
    }
    
    // Agrega un ingrediente a la pizza, no se permiten ingredientes duplicados
    // Máximo 5 ingredientes
    func agregarIngrediente(nombreIngrediente:String) {
        print("Ingrediente \(nombreIngrediente)")
        if ingredientes.count < 5 {
            
            if let ing = Ingredientes(rawValue: nombreIngrediente) {
                
                if !ingredientes.contains(ing) {
                    ingredientes.append(ing)
                }
            }
        }
    }
    
    
}
