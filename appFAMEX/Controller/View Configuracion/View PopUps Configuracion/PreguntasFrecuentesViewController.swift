//
//  PreguntasFrecuentesViewController.swift
//  appFAMEX
//
//  Created by Desarrollador FAMEX on 14/03/23.
//

import UIKit

class PreguntasFrecuentesViewController:  UIViewController{

    

    

    

    
//    , UITableViewDelegate, UITableViewDataSource
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
    @IBOutlet weak var viewContentHeader: UIView!
    @IBOutlet weak var tableViewPreguntas: UITableView!
    
//    private let tableView: UITableView = {
//        let tableView = UITableView()
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//
//
//        return tableView
//
//    }()
//
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
//

        
        
        btnCerrar.setTitle("Cerrar", for: .normal)
        
      //  viewButtons.backgroundColor = .none
        //------------Labels/
        
        lblPreguntas.text =  "PREGUNTAS\nFRECUENTES"
        lblPreguntas.numberOfLines = 2
        lblPreguntas.font = UIFont(name: "Plateia", size: 20)
        lblPreguntas.textColor = .white
        
        //----------------Buttons
//        generales.setImage(UIImage(named: "imgBarraBluePopUp"), for: .normal)
//        btnEvento.setImage(UIImage(named: "imgBarraBluePopUp"), for: .normal)
//        btnRutas.setImage(UIImage(named: "imgBarraBluePopUp"), for: .normal)
        
        //----------------------Views
        viewContentHeader.backgroundColor = .none
        viewButtons.backgroundColor = .systemPink
        
        
        
//
        tableViewPreguntas.register(UINib(nibName: "PreguntasTableViewController", bundle: nil), forCellReuseIdentifier: "cell")


           
    }
    

    
//    
    

    @IBAction func btnCerrar(_ sender: Any) {
        
     
        dismiss(animated: true, completion: nil)
        print("botón cerrar")

    }
  
    
}
