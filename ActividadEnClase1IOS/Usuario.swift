//
//  Usuario.swift
//  ActividadEnClase1IOS
//
//  Created by Javier Fernández García on 19/4/17.
//  Copyright © 2017 U-tad. All rights reserved.
//

import UIKit

class Usuario: NSObject {
    
    var sNombre:String?
    var fLat:Float?
    var fLong:Float?

    init(valores:[String:AnyObject]) {
        sNombre = valores["Nombre"] as? String
        fLat = valores["Latitud"] as? Float
        fLong = valores["Longitud"] as? Float
    }
}
