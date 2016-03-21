//
//  OrdenarInterfaceController.swift
//  PizzaUno
//
//  Created by Juan Jose Renteria on 10/03/16.
//  Copyright © 2016 Juan Jose Renteria. All rights reserved.
//

import WatchKit
import Foundation


class OrdenarInterfaceController: WKInterfaceController {
    
    
    @IBOutlet var tablaIngredientes: WKInterfaceTable!
    @IBOutlet var tamañoPizza: WKInterfaceLabel!
    @IBOutlet var masaPizza: WKInterfaceLabel!
    @IBOutlet var quesoPizza: WKInterfaceLabel!
    
    
    var pizza: Pizza!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza
        if pizza != nil {
            tamañoPizza.setText( pizza!.tamaño?.rawValue)
            masaPizza.setText( pizza!.tipoMasa?.rawValue)
            quesoPizza.setText(pizza!.tipoQueso?.rawValue)
            cargaIngredientes()
        }
       
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func cargaIngredientes() {
        if pizza  != nil {
            
            tablaIngredientes.setNumberOfRows(pizza!.ingredientes.count, withRowType: "celdaIngrediente")
            
            for index in 0..<pizza!.ingredientes.count {
                let row = tablaIngredientes.rowControllerAtIndex(index) as! IngredienteOrdenCelda
                row.ingrediente = pizza!.ingredientes[index].rawValue

            }
            NSLog("numero de ingredientes \(pizza!.ingredientes.count)")
        }
        
        
    }
    

    @IBAction func ordenaPizza() {
        if pizza!.validarPizza() {
            pushControllerWithName("ProcesarOrden", context: "Orden preparada")
        }

    }
    
    
    @IBAction func cancelaPizza() {
        pushControllerWithName("ProcesarOrden", context: "Orden cancelada")

    }
}
