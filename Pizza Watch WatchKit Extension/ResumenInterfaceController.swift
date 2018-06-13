//
//  ResumenInterfaceController.swift
//  Pizza Watch WatchKit Extension
//
//  Created by Sara Fernández Menéndez on 13/6/18.
//  Copyright © 2018 Guillermo Garcia. All rights reserved.
//

import WatchKit
import Foundation


class ResumenInterfaceController: WKInterfaceController {
    
    @IBOutlet var tamanoLabel: WKInterfaceLabel!
    @IBOutlet var masaLabel: WKInterfaceLabel!
    @IBOutlet var quesoLabel: WKInterfaceLabel!
    @IBOutlet var ingredientesLabel: WKInterfaceLabel!
    
    var ingredientes:String = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let c = context as! Resultados
        
        ingredientes = ingredientes + c.ingredientes1R + "," + c.ingredientes2R +
            "," + c.ingredientes3R + "," + c.ingredientes4R + "," + c.ingredientes5R
        tamanoLabel.setText(c.tamanoR)
        masaLabel.setText(c.masaR)
        quesoLabel.setText(c.quesoR)
        ingredientesLabel.setText(ingredientes)
    }

    @IBAction func confirmar() {
        tamanoLabel.setText("")
        masaLabel.setText("")
        quesoLabel.setText("")
        ingredientesLabel.setText("Pedido hecho")
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
