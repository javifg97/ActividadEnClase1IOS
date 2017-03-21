//
//  ViewController.swift
//  ActividadEnClase1IOS
//
//  Created by Javier Fernández García on 14/3/17.
//  Copyright © 2017 U-tad. All rights reserved.
//

import UIKit

class ViewControllerLogin: UIViewController {

    
    @IBOutlet var btnLog:UIButton?
    @IBOutlet var txtfUser:UITextField?
    @IBOutlet var txtfPass:UITextField?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func accionBtnLog(){
        if (txtfUser?.text == DataHolder.sharedInstance.sNomUser && txtfPass?.text == DataHolder.sharedInstance.sPass) {
            self.performSegue(withIdentifier: "LogCorrecto", sender: self)
        }
    }

}

