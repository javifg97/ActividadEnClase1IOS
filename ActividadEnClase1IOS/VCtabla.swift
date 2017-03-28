//
//  VCtabla.swift
//  ActividadEnClase1IOS
//
//  Created by Javier Fernández García on 27/3/17.
//  Copyright © 2017 U-tad. All rights reserved.
//

import UIKit

class VCtabla: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tbMiTable: UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataHolder.sharedInstance.arrNombresCelda.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TVCMiCelda = tableView.dequeueReusableCell(withIdentifier: "miCelda1")as! TVCMiCelda
        cell.lblNombre?.text = DataHolder.sharedInstance.arrNombresCelda[indexPath.row]
        cell.imgPerfil?.image = DataHolder.sharedInstance.arrImgCeldas[indexPath.row]
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
