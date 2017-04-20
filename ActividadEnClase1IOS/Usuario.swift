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
    var dbLat:Double?
    var dbLong:Double?
    var sRutaImagenCel:String?

    init(valores:[String:AnyObject]) {
        sNombre = valores["Nombre"] as? String
        dbLat = valores["Latitud"] as? Double
        dbLong = valores["Longitud"] as? Double
        sRutaImagenCel = valores["RutaImagenCel"] as? String
    }
}
