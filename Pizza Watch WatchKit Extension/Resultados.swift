//
//  Resultados.swift
//  Pizza Watch WatchKit Extension
//
//  Created by Sara Fernández Menéndez on 14/5/18.
//  Copyright © 2018 Guillermo Garcia. All rights reserved.
//

import WatchKit

class Resultados: NSObject {
    
    var tamanoR:String = ""
    var masaR:String = ""
    var quesoR:String = ""
    var ingredientes1R:String = ""
    var ingredientes2R:String = ""
    var ingredientes3R:String = ""
    var ingredientes4R:String = ""
    var ingredientes5R:String = ""
    
    init(tamano:String, masa:String, queso:String, ingrediente1:String,
                  ingrediente2:String, ingrediente3:String, ingrediente4:String,
                  ingrediente5:String) {
        tamanoR = tamano
        masaR = masa
        quesoR = queso
        ingredientes1R = ingrediente1
        ingredientes2R = ingrediente2
        ingredientes3R = ingrediente3
        ingredientes4R = ingrediente4
        ingredientes5R = ingrediente5
        
    }

}
