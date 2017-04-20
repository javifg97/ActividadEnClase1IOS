//
//  Maps.swift
//  ActividadEnClase1IOS
//
//  Created by Javier Fernández García on 28/3/17.
//  Copyright © 2017 U-tad. All rights reserved.
//

import UIKit
import MapKit
import FirebaseDatabase

class Maps: UIViewController,MKMapViewDelegate{

    @IBOutlet var maps: MKMapView!
    var pines:[String:MKAnnotation]? = [:]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        maps.showsUserLocation = true
        maps?.delegate = self
        
        
        
        DataHolder.sharedInstance.firDataBaseRef.child("Nombre").observeSingleEvent(of: .value, with: { (snapshot) in
            
            let arTemp  =  snapshot.value as? Array<AnyObject>
            
            
            DataHolder.sharedInstance.arrNombresCelda=Array<Usuario>()
            
            
            for us in arTemp! as [AnyObject]{
                let user = Usuario(valores: us as! [String:AnyObject])
                DataHolder.sharedInstance.arrNombresCelda?.append(user)
                
                var coorAux:CLLocationCoordinate2D = CLLocationCoordinate2D()
                coorAux.latitude = user.dbLat!
                coorAux.longitude = user.dbLong!
                self.agregarPin(coordenada: coorAux, titulo: user.sNombre!)
                
                
            }
            
            
            
        })
        
        
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
        var annotation:MKPointAnnotation = MKPointAnnotation()
        
        if(pines?[tpin] == nil){
            
        }
        else{
            annotation = pines?[tpin] as! MKPointAnnotation
            maps?.removeAnnotation(annotation)
            
        }
        
        annotation.coordinate = coordenada
        annotation.title = tpin
        pines?[tpin] = annotation
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
