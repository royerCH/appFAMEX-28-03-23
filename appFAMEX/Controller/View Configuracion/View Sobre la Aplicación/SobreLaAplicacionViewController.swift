//
//  SobreLaAplicacionViewController.swift
//  appFAMEX
//
//  Created by Desarrollador FAMEX on 21/03/23.
//

import UIKit

class SobreLaAplicacionViewController: UIViewController {

    @IBOutlet weak var btnCerrar: UIButton!
    @IBOutlet weak var lblSobreApp: UILabel!
    @IBOutlet weak var lblsafamex: UILabel!
    @IBOutlet weak var lblañofamex: UILabel!
    @IBOutlet weak var lblversionf: UILabel!
    @IBOutlet weak var viewButtons: UIView!
    
    @IBOutlet weak var logosobre: UIImageView!
    @IBOutlet weak var logoFamex: UIImageView!
    
    @IBOutlet weak var btnFlecha: UIImageView!	
    @IBOutlet weak var fonDesarro: UIImageView!
    @IBOutlet weak var btnDesarro: UIButton!

    
    @IBOutlet weak var viewContentHeader: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Boton Cerrar
        btnCerrar.setTitle("Cerrar", for: .normal)
        
        
        //--Nombre de la pesataña
        lblSobreApp.text =  "SOBRE LA\nAPLICACIÓN"
        lblSobreApp.numberOfLines = 2
        lblSobreApp.font = UIFont(name: "Plateia", size: 24)
        lblSobreApp.textColor = .white
        
        lblsafamex.text = "FERIA AEREO ESPACIAL MÉXICO"
        lblsafamex.numberOfLines = 0
        lblsafamex.font = UIFont(name: "Plateia", size: 16)
        lblsafamex.textColor = .white
        
        btnDesarro.setTitle("DESARROLLADORES", for: .normal)
        
        lblañofamex.text = "2022 - 2023"
        lblañofamex.numberOfLines = 0
        lblañofamex.font = UIFont(name: "Plateia", size: 16)
        lblañofamex.textColor = .white
        
        lblversionf.text = "VERSION 1.0"
        lblversionf.numberOfLines = 0
        lblversionf.font = UIFont(name: "Plateia", size: 16)
        lblversionf.textColor = .white
        
        viewContentHeader.backgroundColor = .none
        viewButtons.backgroundColor = .none
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCerrar(_ sender: Any) {
        
     
        dismiss(animated: true, completion: nil)
        print("botón Generales")
    }
    
    @IBAction func btnActionDesarro(_ sender: Any)
     {
         performSegue(withIdentifier: "desarroSegue", sender: self)

     print("botón contacto")
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
