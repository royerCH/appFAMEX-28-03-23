//
//  DesarrolladoresViewController.swift
//  appFAMEX
//
//  Created by Desarrollador FAMEX on 23/03/23.
//

import UIKit

class DesarrolladoresViewController: UIViewController {

    
    @IBOutlet weak var btnCerrar: UIButton!

    @IBOutlet weak var lblDesarrol: UILabel!
    @IBOutlet weak var txtDesaCont: UIScrollView!
    @IBOutlet weak var viewButtons: UIView!

    @IBOutlet weak var viewContentHeader: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnCerrar.setTitle("Cerrar", for: .normal)

        
        lblDesarrol.text =  "DESARROLLADORES"
        lblDesarrol.numberOfLines = 1
        lblDesarrol.font = UIFont(name: "Plateia", size: 20)
        lblDesarrol.textColor = .white
        
        txtDesaCont.contentSize = CGSize(width: txtDesaCont.frame.size.width, height: viewButtons.frame.origin.y + viewButtons.frame.size.height)
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func btnCerrar(_ sender: Any) {
        
     
        dismiss(animated: true, completion: nil)
        print("botón Generales")
    }

}
