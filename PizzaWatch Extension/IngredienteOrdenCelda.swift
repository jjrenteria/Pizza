//
//  IngredienteOrdenCelda.swift
//  PizzaUno
//
//  Created by Juan Jose Renteria on 20/03/16.
//  Copyright © 2016 Juan Jose Renteria. All rights reserved.
//

import UIKit
import WatchKit


class IngredienteOrdenCelda: NSObject {
    
    @IBOutlet weak var nombreIngrediente: WKInterfaceLabel!
        
    var ingrediente: String = "" {
        didSet {
            nombreIngrediente?.setText(ingrediente)
        }
    }
    

}
