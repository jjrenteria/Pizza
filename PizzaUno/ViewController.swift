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
        // Do any additional setup after loading the view, typically from a nib.
        pizza = Pizza()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let tipoMasaVC = segue.destinationViewController as! TipoMasaViewController
        tipoMasaVC.pizza = pizza
    }

    
}

