//
//  PreguntasFrecuentesViewController.swift
//  appFAMEX
//
//  Created by Desarrollador FAMEX on 14/03/23.
//

import UIKit

class PreguntasFrecuentesViewController: UIViewController {
    

    @IBOutlet weak var btnCerrar: UIButton!
    
    @IBOutlet weak var lblPreguntas: UILabel!
  
    
    
    @IBOutlet weak var viewButtons: UIView!
    
    
    @IBOutlet weak var generales: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        btnCerrar.setTitle("Cerrar", for: .normal)
        
        viewButtons.backgroundColor = .none
        
        
        
        //------------Labels/
        lblPreguntas.text = "PREGUNTAS\nFRECUENTES"
        lblPreguntas.numberOfLines = 2
        lblPreguntas.contentMode = .center
        lblPreguntas.textColor = .white
        lblPreguntas.font = .boldSystemFont(ofSize: 20)
        lblPreguntas.font = UIFont(name: "Plateia", size: 20)
        
        
        //----------------Buttons
        generales.setTitle("GENERALES", for: .normal)
        //generales.setTitleColor(.black, for: .normal)
        generales.setImage(UIImage(named: "imgBarraBluePopUp"), for: .normal)
        
   
    }
    

    @IBAction func btnCerrar(_ sender: Any) {
        
     
        dismiss(animated: true, completion: nil)
        print("botón Generales")
    }
    
    
    
    
    
    
    
}
