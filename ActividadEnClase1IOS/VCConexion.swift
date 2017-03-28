//
//  VCConexion.swift
//  ActividadEnClase1IOS
//
//  Created by Javier Fernández García on 28/3/17.
//  Copyright © 2017 U-tad. All rights reserved.
//

import UIKit

class VCConexion: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    
    @IBOutlet var ColCollection:UICollectionView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataHolder.sharedInstance.arrNombresCelda.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CVCMiCelda=collectionView.dequeueReusableCell(withReuseIdentifier: "micelda2", for: indexPath) as! CVCMiCelda
        cell.lblTextoCell?.text=DataHolder.sharedInstance.arrNombresCelda[indexPath.row]
        cell.lblImageCell?.image=DataHolder.sharedInstance.arrImgCeldas[indexPath.row]
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
