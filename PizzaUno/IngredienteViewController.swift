//
//  IngredienteViewController.swift
//  PizzaUno
//
//  Created by Juan Jose Renteria on 04/03/16.
//  Copyright © 2016 Juan Jose Renteria. All rights reserved.
//

import UIKit

class IngredienteViewController: UIViewController {

    
    @IBOutlet weak var butonIngrediente1: UIButton!
    
    @IBOutlet weak var butonIngrediente2: UIButton!
    
    @IBOutlet weak var butonIngrediente3: UIButton!
    
    @IBOutlet weak var butonIngrediente4: UIButton!
    
    @IBOutlet weak var butonIngrediente5: UIButton!
    
    @IBOutlet weak var butonIngrediente6: UIButton!
    
    @IBOutlet weak var butonIngrediente7: UIButton!
    
    @IBOutlet weak var butonIngrediente8: UIButton!
    
    @IBOutlet weak var butonIngrediente9: UIButton!

    @IBOutlet weak var butonIngrediente10: UIButton!
    
    
    //Agrega los ingredientes, no se permiten ingredientes duplicados
    
    @IBAction func selecionarIngrediente(sender: UIButton) {
        if pizza != nil {
            pizza?.agregarIngrediente((sender.titleLabel?.text)!)
        }
    }
    
    
    var pizza: Pizza?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        butonIngrediente1.setTitle("\(Ingredientes.Jamón)", forState: UIControlState.Normal)
        butonIngrediente2.setTitle("\(Ingredientes.Pepperoni)", forState: UIControlState.Normal)
        butonIngrediente3.setTitle("\(Ingredientes.Pavo)", forState: UIControlState.Normal)
        butonIngrediente4.setTitle("\(Ingredientes.Salchicha)", forState: UIControlState.Normal)
        butonIngrediente5.setTitle("\(Ingredientes.Aceituna)", forState: UIControlState.Normal)
        butonIngrediente6.setTitle("\(Ingredientes.Cebolla)", forState: UIControlState.Normal)
        butonIngrediente7.setTitle("\(Ingredientes.Pimiento)", forState: UIControlState.Normal)
        butonIngrediente8.setTitle("\(Ingredientes.Piña)", forState: UIControlState.Normal)
        butonIngrediente9.setTitle("\(Ingredientes.Anchoa)", forState: UIControlState.Normal)
        butonIngrediente10.setTitle("\(Ingredientes.Pollo)", forState: UIControlState.Normal)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let confirmaOrdenVC = segue.destinationViewController as! ConfirmaOrdenViewController
        confirmaOrdenVC.pizza = pizza
    }
    

}
