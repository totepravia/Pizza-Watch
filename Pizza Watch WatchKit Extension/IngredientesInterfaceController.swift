//
//  IngredientesInterfaceController.swift
//  Pizza Watch WatchKit Extension
//
//  Created by Sara Fernández Menéndez on 14/5/18.
//  Copyright © 2018 Guillermo Garcia. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController {

    var tamanoEscogido:String = ""
    var masaEscogida:String = ""
    var quesoEscogido:String = ""
    var ingrediente1:String = ""
    var ingrediente2:String = ""
    var ingrediente3:String = ""
    var ingrediente4:String = ""
    var ingrediente5:String = ""
    var numeroIngredientes:Int = 0
    var ingredientes:String = ""
    
    @IBAction func switchJamonBtn(_ value: Bool) {
        if (value){
            numeroIngredientes = numeroIngredientes + 1
            ingredientes.append("Jamon;")
        }else{
            numeroIngredientes = numeroIngredientes - 1
            ingredientes = ingredientes.replacingOccurrences(of: "Jamon",with: "")
        }
    }
    @IBAction func switchPeperoniBtn(_ value: Bool) {
        if (value){
            numeroIngredientes = numeroIngredientes + 1
            ingredientes.append("Peperoni;")
        }else{
            numeroIngredientes = numeroIngredientes - 1
            ingredientes = ingredientes.replacingOccurrences(of: "Peperoni",with: "")
        }
    }
    @IBAction func switchPavoBtn(_ value: Bool) {
        if (value){
            numeroIngredientes = numeroIngredientes + 1
            ingredientes.append("Pavo;")
        }else{
            numeroIngredientes = numeroIngredientes - 1
            ingredientes = ingredientes.replacingOccurrences(of: "Pavo",with: "")
        }
    }
    @IBAction func switchSalchichaBtn(_ value: Bool) {
        if (value){
            numeroIngredientes = numeroIngredientes + 1
            ingredientes.append("Salchicha;")
        }else{
            numeroIngredientes = numeroIngredientes - 1
            ingredientes = ingredientes.replacingOccurrences(of: "Salchicha",with: "")
        }
    }
    @IBAction func switchAceitunaBtn(_ value: Bool) {
        if (value){
            numeroIngredientes = numeroIngredientes + 1
            ingredientes.append("Aceituna;")
        }else{
            numeroIngredientes = numeroIngredientes - 1
            ingredientes = ingredientes.replacingOccurrences(of: "Aceituna",with: "")
        }
    }
    @IBAction func switchCebollaBtn(_ value: Bool) {
        if (value){
            numeroIngredientes = numeroIngredientes + 1
            ingredientes.append("Cebolla;")
        }else{
            numeroIngredientes = numeroIngredientes - 1
            ingredientes = ingredientes.replacingOccurrences(of: "Cebolla",with: "")
        }
    }
    @IBAction func switchPimientoBtn(_ value: Bool) {
        if (value){
            numeroIngredientes = numeroIngredientes + 1
            ingredientes.append("Pimiento;")
        }else{
            numeroIngredientes = numeroIngredientes - 1
            ingredientes = ingredientes.replacingOccurrences(of: "Pimiento",with: "")
        }
    }
    @IBAction func switchPinaBtn(_ value: Bool) {
        if (value){
            numeroIngredientes = numeroIngredientes + 1
            ingredientes.append("Pina;")
        }else{
            numeroIngredientes = numeroIngredientes - 1
            ingredientes = ingredientes.replacingOccurrences(of: "Pina",with: "")
        }
    }
    @IBAction func switchAnchoaBtn(_ value: Bool) {
        if (value){
            numeroIngredientes = numeroIngredientes + 1
            ingredientes.append("Anchoa;")
        }else{
            numeroIngredientes = numeroIngredientes - 1
            ingredientes = ingredientes.replacingOccurrences(of: "Anchoa",with: "")
        }
    }
    
    @IBOutlet var labelMensaje: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let c = context as! Resultados
        tamanoEscogido = c.tamanoR
        masaEscogida = c.masaR
        quesoEscogido = c.quesoR
        
        self.ingredientes=""
        self.ingrediente1=""
        self.ingrediente2=""
        self.ingrediente3=""
        self.ingrediente4=""
        self.ingrediente5=""
        labelMensaje.setText("")
        self.numeroIngredientes=0
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func encargar() {
        if (validarIngredientes()){
            print("entra")
            print("Ingr:",ingredientes)
            let partesIngredientes = ingredientes.components(separatedBy: ";")
            let numero = partesIngredientes.count
            if (numero>0){
                if (!partesIngredientes[0].isEmpty){
                    ingrediente1 = partesIngredientes[0]
                    print(ingrediente1)
                }
            }
            if (numero>1){
                if (!partesIngredientes[1].isEmpty){
                    ingrediente2 = partesIngredientes[1]
                    print(ingrediente2)
                }
            }
            if (numero>2){
                if (!partesIngredientes[2].isEmpty){
                    ingrediente3 = partesIngredientes[2]
                    print(ingrediente3)
                }
            }
            if (numero>3){
                if (!partesIngredientes[3].isEmpty){
                    ingrediente4 = partesIngredientes[3]
                    print(ingrediente4)
                }
            }
            if (numero>4){
                if (!partesIngredientes[4].isEmpty){
                    ingrediente5 = partesIngredientes[4]
                    print(ingrediente5)
                }
            }
            
            // Navegación a la última página
            let res = Resultados(tamano: tamanoEscogido, masa: masaEscogida, queso: quesoEscogido, ingrediente1: ingrediente1, ingrediente2: ingrediente2, ingrediente3: ingrediente3, ingrediente4: ingrediente4, ingrediente5: ingrediente5)
            pushController(withName: "resumen", context: res)
        }
    }
    
    func validarIngredientes() -> Bool{
        labelMensaje.setText("")
        // Control de número de ingredientes
        print("numeroIngredientes:",numeroIngredientes)

        if (numeroIngredientes > 5){
            labelMensaje.setText("5 máximo")
            return false
        }else{
            return true
        }
    }

}
