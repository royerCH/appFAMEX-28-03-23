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
        
        lblContactoContenido.text = " Contacto "
        lblContactoContenido.numberOfLines = 0
        lblContactoContenido.adjustsFontSizeToFitWidth = true
        lblContactoContenido.font = UIFont(name: "Plateia", size: 16)
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
