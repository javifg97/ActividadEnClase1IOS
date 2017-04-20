//
//  ViewControllerRegistro.swift
//  ActividadEnClase1IOS
//
//  Created by Javier Fernández García on 21/3/17.
//  Copyright © 2017 U-tad. All rights reserved.
//

import UIKit
import FirebaseAuth

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
        if (self.txtfNPass?.text == self.txtfNPassCon?.text) {
            FIRAuth.auth()?.createUser(withEmail: (txtfNEmail?.text)!, password: (txtfNPass?.text)!){ (user, error) in
                
                if (error==nil){
                    DataHolder.sharedInstance.usuario=user
                    let changeRequest = FIRAuth.auth()?.currentUser?.profileChangeRequest()
                    changeRequest?.displayName = self.txtfNUser?.text
                    changeRequest?.commitChanges() { (error) in
                        if(error==nil){
                            self.performSegue(withIdentifier: "RegCorrecto", sender: self)
                        }
                    }
                    
                    
                    
                    
                }
                else{
                    print("Error registro", error)
                }
            }
        }
        
        
       
    }

}
