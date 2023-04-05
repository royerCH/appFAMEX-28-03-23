//
//  TerminosYCondicionesViewController.swift
//  appFAMEX
//
//  Created by Desarrollador FAMEX on 21/03/23.
//

import UIKit

class TerminosYCondicionesViewController: UIViewController {

    @IBOutlet weak var btnCerrar: UIButton!
    @IBOutlet weak var lblTerminos: UILabel!
    //@IBOutlet weak var txtTerminos: UITextView!
    @IBOutlet weak var viewButtons: UIView!
    
    
    @IBOutlet weak var viewContentHeader: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Boton Cerrar
        btnCerrar.setTitle("Cerrar", for: .normal)
        
        
        //--Nombre de la pesataña
        lblTerminos.text =  "TERMINOS Y CONDICIONES"
        lblTerminos.numberOfLines = 2
        lblTerminos.font = UIFont(name: "Plateia", size: 17)
        lblTerminos.textColor = .white
        
        //txtTerminos.text = "A"
        
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
