//
//  TVCMiCelda.swift
//  ActividadEnClase1IOS
//
//  Created by Javier Fernández García on 28/3/17.
//  Copyright © 2017 U-tad. All rights reserved.
//

import UIKit
import FirebaseStorage

class TVCMiCelda: UITableViewCell {
    
    @IBOutlet var lblNombre:UILabel?
    @IBOutlet var imgPerfil:UIImageView?
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func descargarImagen(ruta:String){
        let isLandRef = DataHolder.sharedInstance.firstorageRef?.child(ruta)
        
        isLandRef?.data(withMaxSize: 1*1024*1024){ data,error in
            if error != nil {
                
            }
            else{
                let image = UIImage(data:data!)
                self.imgPerfil?.image = image
            }
        }
    }

}
