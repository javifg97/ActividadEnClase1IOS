//
//  VCtabla.swift
//  ActividadEnClase1IOS
//
//  Created by Javier Fernández García on 27/3/17.
//  Copyright © 2017 U-tad. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class VCtabla: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tbMiTable: UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
            DataHolder.sharedInstance.firDataBaseRef.child("Nombre").observeSingleEvent(of: .value, with: { (snapshot) in
                
                let arTemp  =  snapshot.value as? Array<AnyObject>
                
                
                    DataHolder.sharedInstance.arrNombresCelda=Array<Usuario>()
                
                
                for us in arTemp! as [AnyObject]{
                    let user = Usuario(valores: us as! [String:AnyObject])
                    DataHolder.sharedInstance.arrNombresCelda?.append(user)
                    
                }
                
                self.tbMiTable?.reloadData()
                
                

        })

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (DataHolder.sharedInstance.arrNombresCelda==nil) {
            return 0
        }
        else{
            return (DataHolder.sharedInstance.arrNombresCelda?.count)!}
        
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TVCMiCelda = tableView.dequeueReusableCell(withIdentifier: "miCelda1")as! TVCMiCelda
        
        
        let user:Usuario = DataHolder.sharedInstance.arrNombresCelda![indexPath.row]
        
        cell.lblNombre?.text = user.sNombre
        cell.descargarImagen(ruta: user.sRutaImagenCel!)
        return cell
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
