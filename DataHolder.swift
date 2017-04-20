//
//  DataHolder.swift
//  ActividadEnClase1IOS
//
//  Created by Javier Fernández García on 21/3/17.
//  Copyright © 2017 U-tad. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth
import FirebaseStorage

class DataHolder: NSObject {
    
    var firDataBaseRef:FIRDatabaseReference!
    var locationAdmin:LocationAdmin?
    var firStorage:FIRStorage?
    var firstorageRef:FIRStorageReference?
    
    func initFirebase(){
        FIRApp.configure()
        firDataBaseRef = FIRDatabase.database().reference()
        firStorage = FIRStorage.storage()
        firstorageRef = firStorage?.reference()
        
    }
    func initLocationAdmin (){
        locationAdmin=LocationAdmin()
    }

    static let sharedInstance:DataHolder=DataHolder()
    
    var usuario:FIRUser?
    var arrNombresCelda:Array<Usuario>?
    //var arrImgCeldas:Array<UIImage> = [UIImage(named: "any1.jpeg")!, UIImage(named: "any2.jpeg")!, UIImage(named: "any3.jpeg")!, UIImage(named: "any4.jpeg")!, UIImage(named: "any5.jpeg")!]
        
}
