//
//  ViewController.swift
//  Practica3
//
//  Created by ROLANDO on 16/02/17.
//  Copyright © 2017 ROLANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var password: UITextField!

    @IBOutlet weak var idName: UITextField!
    @IBOutlet weak var error: UILabel!
    @IBAction func inicio(sender: AnyObject) {
        var user = idName.text;
        var pass = password.text;
        if(user == "rolando" && pass == "tec2" ){
            let acMiDialogo = UIAlertController (title: "Hola", message: user, preferredStyle: .Alert)
            let btnOk = UIAlertAction (title: "OK", style: .Cancel, handler: nil)
            acMiDialogo.addAction(btnOk)
            presentViewController(acMiDialogo, animated: true, completion: nil)
        }else{
            error.text = "Usuario o Contraseña incorrectos"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

