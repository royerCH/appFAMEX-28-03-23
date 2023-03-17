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
    @IBOutlet weak var lblGenerales: UILabel!
    
    @IBOutlet weak var btnEvento: UIButton!
    @IBOutlet weak var lblEventos: UILabel!
    @IBOutlet weak var btnFlecha: UIImageView!
    
    @IBOutlet weak var btnRutas: UIButton!
    @IBOutlet weak var lblRutas: UILabel!
    @IBOutlet weak var textFieldGenerales: UIView!
    
    @IBOutlet  var arrayButton: [UIButton]!
    
    
    @IBOutlet weak var viewTxt: UIView!
    
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
        
        lblGenerales.text = "GENERALES"
        lblGenerales.contentMode = .center
        lblGenerales.font = UIFont(name: "Plateia", size: 20)
        lblGenerales.textColor = .white
        
        lblEventos.text = "EVENTOS"
        lblEventos.contentMode = .center
        lblEventos.font = UIFont(name: "Plateia", size: 20)
        lblEventos.textColor = .white
        
        
        lblRutas.text = "RUTAS"
        lblRutas.contentMode = .center
        lblRutas.font = UIFont(name: "Plateia", size: 20)
        lblRutas.textColor = .white
        
        //----------------Buttons
        generales.setImage(UIImage(named: "imgBarraBluePopUp"), for: .normal)
        btnEvento.setImage(UIImage(named: "imgBarraBluePopUp"), for: .normal)
        btnRutas.setImage(UIImage(named: "imgBarraBluePopUp"), for: .normal)
        
        
        
        //---------------------Activate actions
        
        btnGenerales((Any).self)
           
    }
    

    @IBAction func btnCerrar(_ sender: Any) {
        
     
        dismiss(animated: true, completion: nil)
        print("botón Generales")
    }
    
    
   
    func showSelectors() {
        arrayButton.forEach{
            button in
            button.isHidden = !button.isHidden
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func btnGenerales(_ sender: Any) {
        
        
        if generales.isHidden == false{
            lblPreguntas.backgroundColor = .red
        }
        
        
        
        
        
            
       
    }
    
    
    
    
    
    
    
}
