//
//  MasaInterfaceController.swift
//  Pizza Watch WatchKit Extension
//
//  Created by Sara Fernández Menéndez on 13/5/18.
//  Copyright © 2018 Guillermo Garcia. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {
    
    var tamanoEscogido:String = ""
    var masaEscogida:String = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
    
        let c = context as! Resultados
        tamanoEscogido = c.tamanoR
    }

    @IBAction func botonDelgada() {
        masaEscogida = "Delgada"
        botonMasa()
    }
    
    @IBAction func botonCrujiente() {
        masaEscogida = "Crujiente"
        botonMasa()
    }
    
    @IBAction func botonGruesa() {
        masaEscogida = "Gruesa"
        botonMasa()
    }
    
    func botonMasa(){
        let res = Resultados(tamano: tamanoEscogido, masa: masaEscogida, queso: "", ingrediente1: "", ingrediente2: "", ingrediente3: "", ingrediente4: "", ingrediente5: "")
        pushController(withName: "masaElegida", context: res)
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
