//
//  ConfirmaOrdenViewController.swift
//  PizzaUno
//
//  Created by Juan Jose Renteria on 03/03/16.
//  Copyright © 2016 Juan Jose Renteria. All rights reserved.
//

import UIKit

class ConfirmaOrdenViewController: UIViewController {

    
    @IBOutlet weak var detallePiza: UITextView!
    
    @IBOutlet weak var botonConfirmar: UIButton!
    
    @IBAction func cancelarOrden() {
    }
    
    
    @IBAction func confirmarOrden() {
    }
    
    var pizza: Pizza?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if pizza != nil {
            detallePiza.text = pizza!.descripcion()
            botonConfirmar.enabled = pizza!.validarPizza()
            
        } else  {
            detallePiza.text = nil
            botonConfirmar.enabled = false
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
