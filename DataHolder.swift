//
//  DataHolder.swift
//  ActividadEnClase1IOS
//
//  Created by Javier Fernández García on 21/3/17.
//  Copyright © 2017 U-tad. All rights reserved.
//

import UIKit
import Firebase

class DataHolder: NSObject {
    
    func initFirebase(){
        FIRApp.configure()
        
    }

    static let sharedInstance:DataHolder=DataHolder()
    
    
    var sNomUser:String?=""
    var sPass:String?=""
    var arrNombresCelda:Array<String> = ["JAVI","YONY","CRIS","ALFRED","PEPE"]
    var arrImgCeldas:Array<UIImage> = [UIImage(named: "any1.jpeg")!, UIImage(named: "any2.jpeg")!, UIImage(named: "any3.jpeg")!, UIImage(named: "any4.jpeg")!, UIImage(named: "any5.jpeg")!]
        
}
