//
//  IngredienteCelda.swift
//  PizzaUno
//
//  Created by Juan Jose Renteria on 11/03/16.
//  Copyright © 2016 Juan Jose Renteria. All rights reserved.
//

import WatchKit

class IngredienteCelda: NSObject {
    
    @IBOutlet weak var nombreIngrediente: WKInterfaceLabel!
    
    @IBOutlet weak var selecionaIngrediente: WKInterfaceLabel!
    
    var estatus = false
    
    var ingrediente: String = "" {
        didSet {
                nombreIngrediente?.setText(ingrediente)
            }
        }

    
    var seleccionado: Bool {
        get {
            return estatus
        }
        
        set {
            
            estatus = newValue
            if newValue {
                selecionaIngrediente?.setText("✔︎")
            } else {
                selecionaIngrediente?.setText("")
            }
        }
    }

}
