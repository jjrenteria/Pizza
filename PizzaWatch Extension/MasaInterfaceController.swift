//
//  MasaInterfaceController.swift
//  PizzaUno
//
//  Created by Juan Jose Renteria on 10/03/16.
//  Copyright © 2016 Juan Jose Renteria. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {
    
    
    @IBOutlet var masaPicker: WKInterfacePicker!
    
    
    @IBAction func seleccionarQueso(value: Int) {
       // pizza.TipoMasa  = TipoMasa(rawValue: listaMasas[value] as! String)
        if pizza != nil {
            pizza?.tipoMasa = TipoMasa(rawValue: listaMasas[value] )
        }
    }
    
    
    @IBAction func elegirQueso() {
        pushControllerWithName("QuesoView", context: pizza)
        
    }
    
    var pizza: Pizza?
    var listaMasas: [String] = []

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as? Pizza
        if pizza != nil {
            listaMasas = pizza!.listaDeMasas()
        }
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        var pickerItem : [WKPickerItem] = []
        for masa in listaMasas {
            let itemMasa = WKPickerItem()
            itemMasa.title = masa
            itemMasa.caption = masa
            pickerItem.append(itemMasa)
        }
        masaPicker.setItems(pickerItem)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
