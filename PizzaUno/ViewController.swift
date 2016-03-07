//
//  ViewController.swift
//  PizzaUno
//
//  Created by Juan Jose Renteria on 03/03/16.
//  Copyright © 2016 Juan Jose Renteria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func selecionaPizaChica(sender: AnyObject) {
        pizza?.tamaño = Tamaños.chica
    }
    
    
    @IBAction func selecionaPizaMediana(sender: AnyObject) {
        pizza?.tamaño = Tamaños.mediana
    }
    
    
    @IBAction func selecionaPizaGrande(sender: AnyObject) {
        pizza?.tamaño = Tamaños.grande
    }
    
    @IBAction func unwindToSegue (segue : UIStoryboardSegue) {
        pizza = Pizza()
    }
    
    var pizza: Pizza?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pizza = Pizza()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let tipoMasaVC = segue.destinationViewController as! TipoMasaViewController
        tipoMasaVC.pizza = pizza
    }

    
}

