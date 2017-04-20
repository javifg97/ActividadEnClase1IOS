//
//  CVCMiCelda.swift
//  ActividadEnClase1IOS
//
//  Created by Javier Fernández García on 28/3/17.
//  Copyright © 2017 U-tad. All rights reserved.
//

import UIKit

class CVCMiCelda: UICollectionViewCell {
    @IBOutlet var lblTextoCell:UILabel?
    @IBOutlet var lblImageCell:UIImageView?
    
    
    func descargarImagen(ruta:String){
        let isLandRef = DataHolder.sharedInstance.firstorageRef?.child(ruta)
        
        isLandRef?.data(withMaxSize: 1*1024*1024){ data,error in
            if error != nil {
                
            }
            else{
                let image = UIImage(data:data!)
                self.lblImageCell?.image = image
            }
        }
    }
}
