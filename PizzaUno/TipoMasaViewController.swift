//
//  TipoMasaViewController.swift
//  PizzaUno
//
//  Created by Juan Jose Renteria on 03/03/16.
//  Copyright © 2016 Juan Jose Renteria. All rights reserved.
//

import UIKit

class TipoMasaViewController: UIViewController {
    
    @IBOutlet weak var descripcionLabel: UILabel!
    
    @IBAction func seleccionarMasaDelgada() {
        pizza?.tipoMasa = TipoMasa.delgada
    }
    
    
    @IBAction func seleccionarMasaCrujiente() {
        pizza?.tipoMasa = TipoMasa.crujiente
    }
    
    @IBAction func seleccionarMasaGruesa() {
        pizza?.tipoMasa = TipoMasa.gruesa
    }
    
    var pizza: Pizza?

    override func viewDidLoad() {
        super.viewDidLoad()
        if pizza != nil {
            descripcionLabel.text = pizza?.tamaño?.rawValue
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    

    
    // MARK: - Navigation

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let quesoVC = segue.destinationViewController as! QuesoViewController
        quesoVC.pizza = pizza
        
    }
    

}
