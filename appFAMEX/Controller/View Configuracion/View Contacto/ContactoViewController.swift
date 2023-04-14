//
//  ContactoViewController.swift
//  appFAMEX
//
//  Created by Desarrollador FAMEX on 21/03/23.
//

import UIKit

class ContactoViewController: UIViewController {

    @IBOutlet weak var btnCerrar: UIButton!
    @IBOutlet weak var lblContacto: UILabel!
    @IBOutlet weak var lblContactoContenido: UILabel!
    @IBOutlet weak var viewButtons: UIView!
    
    @IBOutlet weak var btnFlecha: UIImageView!
    
    @IBOutlet weak var viewContentHeader: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Boton Cerrar
        btnCerrar.setTitle("Cerrar", for: .normal)
        
        
        //--Nombre de la pesataña
        lblContacto.text =  "CONTACTO"
        lblContacto.numberOfLines = 2
        lblContacto.font = UIFont(name: "Plateia", size: 20)
        lblContacto.textColor = .white
        
        lblContactoContenido.text = "GENERAL DE BRIGADA JAVIER SANDOVAL DUEÑAS PRESIDENTE DE COMITE\npresidente@f-airmexico.com.mx\nGENERAL DE BRIGADA GABRIEL GARCIA JIMENEZ DIRECTOR EJECUTIVO\n Tel. +52 (55) 7160 3163ndir.ejecutivo@f-airmexico.com.mx\nCOMERCIAL\nTel. +52 (55) 7098 5299\ncomercial@f-airmexico.com.mx\nRELACIONES PUBLICAS\nTel. +52 (55) 7098 4323\nrels.publicas@f-airmexico.com.mx\nLOGISTICA\nTel. +52 (55) 3181 0332\nlogistica@f-airmexico.com.mx\nOPERACIONES\nTel. +52 (55) 7160 3163\nTel. +52 (55) 7160 3165\noperaciones@f-airmexico.com\nPUBLICIDAD\nTel. +52 (55) 7098 1139\npublicidad@f-airmexico.com.mx\nprensa@f-airmexico.com.mx"
        lblContactoContenido.numberOfLines = 22
        lblContactoContenido.adjustsFontSizeToFitWidth = true
        lblContactoContenido.font = UIFont(name: "Plateia", size: 15)
        lblContactoContenido.minimumScaleFactor = 0.5
        lblContactoContenido.textAlignment = .center
        lblContactoContenido.textColor = .white
        
        viewContentHeader.backgroundColor = .none
        viewButtons.backgroundColor = .none
        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnCerrar(_ sender: Any) {
        
     
        dismiss(animated: true, completion: nil)
        print("botón Generales")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
