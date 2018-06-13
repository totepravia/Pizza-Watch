//
//  QuesoInterfaceController.swift
//  Pizza Watch WatchKit Extension
//
//  Created by Sara Fernández Menéndez on 14/5/18.
//  Copyright © 2018 Guillermo Garcia. All rights reserved.
//

import WatchKit
import Foundation


class QuesoInterfaceController: WKInterfaceController {

    var tamanoEscogido:String = ""
    var masaEscogida:String = ""
    var quesoEscogido:String = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let c = context as! Resultados
        tamanoEscogido = c.tamanoR
        masaEscogida = c.masaR
    }
    
    @IBAction func botonMozarela() {
        quesoEscogido = "Mozarela"
        botonQueso()
    }
    
    @IBAction func botonCheddar() {
        quesoEscogido = "Cheddar"
        botonQueso()
    }
    
    @IBAction func botonParmesano() {
        quesoEscogido = "Parmesano"
        botonQueso()
    }
    
    @IBAction func botonSinQueso() {
        quesoEscogido = "SinQueso"
        botonQueso()
    }
    
    func botonQueso(){
        let res = Resultados(tamano: tamanoEscogido, masa: masaEscogida, queso: quesoEscogido, ingrediente1: "", ingrediente2: "", ingrediente3: "", ingrediente4: "", ingrediente5: "")
        pushController(withName: "quesoElegido", context: res)
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
