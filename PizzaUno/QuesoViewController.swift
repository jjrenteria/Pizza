//
//  QuesoViewController.swift
//  PizzaUno
//
//  Created by Juan Jose Renteria on 03/03/16.
//  Copyright © 2016 Juan Jose Renteria. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController {
    
    
    @IBOutlet weak var descripcionLabel: UILabel!
    
    @IBAction func elegirQuesoMozzarela() {
        pizza?.tipoQueso = TipoQueso.mozarela
    }
    
    @IBAction func elegirQuesoCheddar() {
        pizza?.tipoQueso = TipoQueso.cheddar
    }
    
    
    @IBAction func elegirQuesoParmesano() {
        pizza?.tipoQueso = TipoQueso.parmesano
    }
    
    @IBAction func elegirSinQueso() {
        pizza?.tipoQueso = TipoQueso.sinqueso
    }
    
    var pizza : Pizza?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if pizza != nil {
            descripcionLabel.text = pizza?.tipoMasa?.rawValue
        } 
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let ingredienteVC = segue.destinationViewController as! IngredienteViewController
        ingredienteVC.pizza = pizza
        
    }

}
