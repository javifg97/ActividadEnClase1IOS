//
//  Maps.swift
//  ActividadEnClase1IOS
//
//  Created by Javier Fernández García on 28/3/17.
//  Copyright © 2017 U-tad. All rights reserved.
//

import UIKit
import MapKit

class Maps: UIViewController,MKMapViewDelegate{

    @IBOutlet var maps: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        maps.showsUserLocation = true
        maps?.delegate = self
        var coordTemp:CLLocationCoordinate2D = CLLocationCoordinate2D()
        coordTemp.latitude = 40.4165000
        coordTemp.longitude = -3.7025600
        agregarPin(coordenada: coordTemp, titulo: "pin1")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func agregarPin(coordenada:CLLocationCoordinate2D, titulo tpin:String){
        let annotation:MKPointAnnotation = MKPointAnnotation()
        annotation.coordinate = coordenada
        annotation.title = tpin
        maps.addAnnotation(annotation)
        
    }
    
    func centralizarEnPosicion(coordenadas:CLLocationCoordinate2D){
        let region:MKCoordinateRegion = MKCoordinateRegion(center:coordenadas,span:MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
        maps.setRegion(region, animated: false)
    }
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        centralizarEnPosicion(coordenadas: userLocation.coordinate)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
