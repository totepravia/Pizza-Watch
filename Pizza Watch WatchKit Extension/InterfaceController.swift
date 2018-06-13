//
//  InterfaceController.swift
//  Pizza Watch WatchKit Extension
//
//  Created by Sara Fernández Menéndez on 13/5/18.
//  Copyright © 2018 Guillermo Garcia. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var tamanoEscogido:String = ""
    
    @IBAction func chicaBoton() {
        tamanoEscogido = "Chica"
        botonTamano()
    }

    @IBAction func medianaBoton() {
        tamanoEscogido = "Mediana"
        botonTamano()
    }
    
    @IBAction func grandeBoton() {
        tamanoEscogido = "Grande"
        botonTamano()
    }
    
    @IBAction func botonTamano() {
        let res = Resultados(tamano: tamanoEscogido, masa: "", queso: "", ingrediente1: "", ingrediente2: "", ingrediente3: "", ingrediente4: "", ingrediente5: "")
        pushController(withName: "tamanoElegido", context: res)
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
