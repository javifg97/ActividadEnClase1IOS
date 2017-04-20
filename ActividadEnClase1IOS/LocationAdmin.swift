//
//  LocationAdmin.swift
//  ActividadEnClase1IOS
//
//  Created by Javier Fernández García on 20/4/17.
//  Copyright © 2017 U-tad. All rights reserved.
//

import UIKit
import CoreLocation


class LocationAdmin: NSObject, CLLocationManagerDelegate {
    
    var locationManager:CLLocationManager?
    var delegate:LocationAdminDelegate?
    
    
    override init() {
        super.init()
        
        locationManager=CLLocationManager()
        locationManager?.delegate=self
        locationManager?.requestAlwaysAuthorization()
        locationManager?.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        delegate?.localizacionActualizada(coordenada: locations[0].coordinate)
    }
    
    
    
}

protocol LocationAdminDelegate{
    func localizacionActualizada(coordenada:CLLocationCoordinate2D)
}
