//
//  IngredienteInterfaceController.swift
//  PizzaUno
//
//  Created by Juan Jose Renteria on 10/03/16.
//  Copyright © 2016 Juan Jose Renteria. All rights reserved.
//

import WatchKit
import Foundation


class IngredienteInterfaceController: WKInterfaceController {

   
    @IBOutlet var tablaIngredientes: WKInterfaceTable!
    
    
    @IBAction func confirmarOrden() {

        copiarIngredientes()
        pushControllerWithName("ConfirmarView", context: pizza)
    }
    
    var numeroMaximoIngredientes = 5
    var numeroIngredientesSelecionados = 0
    var pizza:Pizza?
    var listaIngredientes: [IngredienteCelda] = []
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as? Pizza
        cargaIngredientes()
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
            let ingredientes = pizza!.listaIngredientes()
            tablaIngredientes.setNumberOfRows(ingredientes.count, withRowType: "celda")
            
            for index in 0..<ingredientes.count  {
                let row = tablaIngredientes.rowControllerAtIndex(index) as! IngredienteCelda
                
                row.ingrediente = ingredientes[index]
                row.estatus = false 
            }
        }
        
        
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        let row = table.rowControllerAtIndex(rowIndex) as! IngredienteCelda
        if row.seleccionado {
            numeroIngredientesSelecionados--
            row.seleccionado = false

        } else  {
            if numeroIngredientesSelecionados < numeroMaximoIngredientes {
                numeroIngredientesSelecionados++
                row.seleccionado = true
 
            }
        }
    }
    
    func copiarIngredientes() {
        for index in 0..<tablaIngredientes.numberOfRows    {
            let row = tablaIngredientes.rowControllerAtIndex(index)  as! IngredienteCelda
            if row.estatus {
                pizza!.agregarIngrediente(row.ingrediente)
            }
        }
        
    }

}
