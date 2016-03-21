//
//  QuesoInterfaceController.swift
//  PizzaUno
//
//  Created by Juan Jose Renteria on 10/03/16.
//  Copyright © 2016 Juan Jose Renteria. All rights reserved.
//

import WatchKit
import Foundation


class QuesoInterfaceController: WKInterfaceController {

    
    @IBOutlet var quesoPicker: WKInterfacePicker!
    
    
    @IBAction func elegirQueso(value: Int) {
        if pizza != nil {
            pizza?.tipoQueso = TipoQueso(rawValue: listaQuesos[value] )
        }
    }
    
    @IBAction func seleccionarIngrediente() {
        
        pushControllerWithName("IngredienteView", context: pizza)
    }
    
    var pizza: Pizza?
    var listaQuesos: [String] = []
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        pizza = context as! Pizza
        if pizza != nil {
            listaQuesos = pizza!.listaDeQuesos()
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        var pickerItem : [WKPickerItem] = []
        for queso in listaQuesos {
            let itemQueso = WKPickerItem()
            itemQueso.title = queso
            itemQueso.caption = queso
            pickerItem.append(itemQueso)
        }
        quesoPicker.setItems(pickerItem)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
