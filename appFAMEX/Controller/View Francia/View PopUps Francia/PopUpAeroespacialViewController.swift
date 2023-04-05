//
//  PopUpAeroespacialViewController.swift
//  appFAMEX
//
//  Created by Rui on 30/03/23.
//

import UIKit

class PopUpAeroespacialViewController: UIViewController {

    @IBOutlet var viewPopUpID: UIView!
    @IBOutlet weak var viewImgAvion: UIView!
    @IBOutlet weak var viewTextAvion: UIView!
    @IBOutlet weak var textAvion: UITextView!
    @IBOutlet weak var lblnombre: UILabel!
    
    
    @IBOutlet weak var btncerrar: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        customViews()
        customNavigationBarPopUp()
        
    }
    
    func customViews () {
        viewImgAvion.backgroundColor = .clear
        lblnombre.backgroundColor = .clear
        lblnombre.textAlignment = .center
        lblnombre.text =  "Industria Aeroespacial francesa"
        lblnombre.numberOfLines = 0
        lblnombre.font = UIFont(name: "Plateia", size: 20)
        lblnombre.textColor = .white
        
        textAvion.backgroundColor = .clear
        textAvion.textColor = .white
        textAvion.isEditable = false
        
    }
    
    func customNavigationBarPopUp() {

        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.07122091204, green: 0.05044277757, blue: 0.1986504793, alpha: 1)
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Atràs", style: .plain, target: self, action: #selector(btnClosePopUp))
        
    }
    
    @objc func btnClosePopUp () {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func btnCerrar(_ sender: Any) {
        
     
        dismiss(animated: true, completion: nil)
        print("botón Generales")
    }

}
