//
//  ProcesarOrdenInterfaceController.swift
//  PizzaUno
//
//  Created by Juan Jose Renteria on 20/03/16.
//  Copyright © 2016 Juan Jose Renteria. All rights reserved.
//

import WatchKit
import Foundation


class ProcesarOrdenInterfaceController: WKInterfaceController {
    
    @IBOutlet var estatusOrden: WKInterfaceLabel!
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let mensaje = context as! String
        estatusOrden.setText(mensaje)
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

}
