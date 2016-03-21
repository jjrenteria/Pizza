//
//  InterfaceController.swift
//  PizzaWatch Extension
//
//  Created by Juan Jose Renteria on 10/03/16.
//  Copyright © 2016 Juan Jose Renteria. All rights reserved.
//

import WatchKit
import Foundation



class InterfaceController: WKInterfaceController {

    @IBOutlet var pickerTamañoPiza: WKInterfacePicker!
    
    
    @IBAction func elegirMasaPiza() {
       
        pushControllerWithName("MasaView", context: pizza)
        
    }
    
    @IBAction func elegirMasa(value: Int) {
        pizza.tamaño = Tamaños(rawValue: listaTamañosPizza[value] as! String)
    }

    
    
    var pizza: Pizza
    var listaTamañosPizza = []
    
    override init() {
        pizza = Pizza()
        listaTamañosPizza = pizza.tamañosPizza()
        super.init()
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
    }

    override func willActivate() {
        var pickerItem : [WKPickerItem] = []
        super.willActivate()
        
        for tamano in listaTamañosPizza {
            let itemTamaño = WKPickerItem()
            itemTamaño.title = tamano as! String
            itemTamaño.caption = tamano as! String
            pickerItem.append(itemTamaño)
        }
        pickerTamañoPiza.setItems(pickerItem)
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
