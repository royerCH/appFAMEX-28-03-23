//
//  BienvenidaViewController.swift
//  appFAMEX
//
//  Created by Desarrollador FAMEX on 13/02/23.

// creando pruebas para subir a git hub 
//

import UIKit

class BienvenidaViewController: UIViewController {

    
    @IBOutlet weak var verIdioma: UILabel!
    @IBOutlet weak var BgWelcome: UIImageView!
    @IBOutlet weak var user: UILabel!
    @IBOutlet weak var password: UILabel!
    
    
    var tipoIdioma: Int?
    var etiqueta: String?
    var newUser: NewUser?
    
 
   
    override func viewDidLoad() {
        
        newUser = NewUser()
        
        super.viewDidLoad()
        
        if tipoIdioma == 1 {
    
           // BgWelcome.image = UIImage(named: "0Inicio1")
   
            verIdioma.text = ("Tipo de idioma  \(String(describing: tipoIdioma!))")
            user.text = "\(String(describing: newUser!.getName()))"
            password.text = "Contraseña \(String(describing: newUser!.getPassword()))"


        } else {
            //BgWelcome.image = UIImage(named: "0Inicio2")
            verIdioma.text = ("Idioma  \(String(describing: tipoIdioma!))")
            user.text = "Contraseña de usuario : \(String(describing: newUser!.getPassword()))"
            password.text = "Contraseña \(String(describing: newUser!.getPassword()))"
        }
    
    }
}





