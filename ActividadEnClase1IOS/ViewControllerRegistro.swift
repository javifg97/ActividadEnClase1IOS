//
//  ViewControllerRegistro.swift
//  ActividadEnClase1IOS
//
//  Created by Javier Fernández García on 21/3/17.
//  Copyright © 2017 U-tad. All rights reserved.
//

import UIKit

class ViewControllerRegistro: UIViewController {

    @IBOutlet var btnAceptar:UIButton?
    @IBOutlet var txtfNUser:UITextField?
    @IBOutlet var txtfNPass:UITextField?
    @IBOutlet var txtfNPassCon:UITextField?
    @IBOutlet var txtfNEmail:UITextField?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func AceptarRegistro(){
        let aux:String=""
        if (!(txtfNUser?.text == aux) && txtfNPass?.text == txtfNPassCon?.text && !(txtfNEmail?.text == aux)) {
            DataHolder.sharedInstance.sNomUser = txtfNUser?.text
            DataHolder.sharedInstance.sPass = txtfNPass?.text
            self.performSegue(withIdentifier: "RegCorrecto", sender: self)
        }
        /*FIRAuth.auth()?.createUser(withEmail: (txtfNUser?.text)!, password: (txtfNPass?.text)!) { (user, error) in
            // ...
        }*/
    }

}
