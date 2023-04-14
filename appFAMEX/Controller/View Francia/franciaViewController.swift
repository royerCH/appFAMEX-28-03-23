//
//  franciaViewController.swift
//  appFAMEX
//
//  Created by Desarrollador FAMEX on 08/09/22.
//

import UIKit

class franciaViewController: UIViewController, protocoloMenu {
    
    //-----------------------OUTLETS-----------------------
    
        // Views
    @IBOutlet weak var viewFrancia: UIView!
    @IBOutlet weak var viewMainButtons: UIView!
    @IBOutlet weak var viewSubButtons: UIView!
    
    
        // Buttons
    /*@IBOutlet weak var btnConferencias: UIButton!
    @IBOutlet weak var btnExpoEstatica: UIButton!
    @IBOutlet weak var btnChalets: UIButton!*/
    @IBOutlet weak var btnRelmf: UIButton!
    @IBOutlet weak var btnIndaernf: UIButton!
    @IBOutlet weak var btnIndaeref: UIButton!
    @IBOutlet weak var btnExacadf: UIButton!
    
    @IBOutlet weak var lblfrancia: UILabel!
    
    @IBOutlet weak var btnlink1: UIButton!
    @IBOutlet weak var btnlink2: UIButton!
    @IBOutlet weak var btnlink3: UIButton!
    @IBOutlet weak var btnlink4: UIButton!
    @IBOutlet weak var btnlink5: UIButton!
    
    var menu: Bool = false
    
    var viewOptionSelect: CGAffineTransform = CGAffineTransform()
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.0307629546, green: 0.1608202691, blue: 0.325432595, alpha: 1)

        viewOptionSelect = viewFrancia.transform
        customViews()
        customNavigationBar()
        addchildController()
        
    }
    
    //-----------------------METHODS-----------------------
    
    private func addchildController() {
        
        let menuViewController = storyboard!.instantiateViewController(withIdentifier: "Menu")
        self.addChild(menuViewController)
        menuViewController.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(menuViewController.view)
        NSLayoutConstraint.activate([
                                        menuViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),   // Constraint Izquierdo
                                        menuViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -90),   // Constraint derecho
                                        menuViewController.view.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),          // Constraint superior
                                        menuViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)])    // Constraint inferior
        menuViewController.didMove(toParent: self)
        self.view.sendSubviewToBack(menuViewController.view)
        
    }
    
    @IBAction func goSiteLink1(_sender: Any){
        if let url = URL(string: "https://mx.ambafrance.org/"){
            if #available(iOS 10, *){
                UIApplication.shared.open(url)
            }else{
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    @IBAction func goSiteLink2(_sender: Any){
        if let url = URL(string: "https://www.franciamexico.com/es.html"){
            if #available(iOS 10, *){
                UIApplication.shared.open(url)
            }else{
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    @IBAction func goSiteLink3(_sender: Any){
        if let url = URL(string: "https://www.safran-group.com/es"){
            if #available(iOS 10, *){
                UIApplication.shared.open(url)
            }else{
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    @IBAction func goSiteLink4(_sender: Any){
        if let url = URL(string: "https://www.airbus.com/en"){
            if #available(iOS 10, *){
                UIApplication.shared.open(url)
            }else{
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    @IBAction func goSiteLink5(_sender: Any){
        if let url = URL(string: "https://www.thalesgroup.com/es/americas/thales-mexico"){
            if #available(iOS 10, *){
                UIApplication.shared.open(url)
            }else{
                UIApplication.shared.openURL(url)
            }
        }
    }

    
    func customViews() {
        
        // Views
    //    viewMainButtons.backgroundColor = .clear
        
        // Buttons

        
            // Clouser para subrayar
        let yourAttributes: [NSAttributedString.Key: Any] = [
              .font: UIFont.systemFont(ofSize: 14),
              .foregroundColor: UIColor.white,
              .underlineStyle: NSUnderlineStyle.single.rawValue
          ]
        
        let attributeString1 = NSMutableAttributedString(
                string: "Relación\nMéxico-Francia",
                attributes: yourAttributes
             )
        
        let attributeString2 = NSMutableAttributedString(
                string: "Industria\naeronáutica\nfrancesa",
                attributes: yourAttributes
             )
        
        let attributeString3 = NSMutableAttributedString(
                string: "Industria\naeroespacial\nfrancesa",
                attributes: yourAttributes
             )

        let attributeString4 = NSMutableAttributedString(
                string: "Excelencia\nAcadémica\nfrancesa",
                attributes: yourAttributes
             )

        
        btnRelmf.setAttributedTitle(attributeString1, for: .normal)
        btnRelmf.titleLabel?.textAlignment = .center
        btnRelmf.titleLabel?.numberOfLines = 0
        btnRelmf.titleLabel?.adjustsFontSizeToFitWidth = true
        
        btnIndaernf.setAttributedTitle(attributeString2, for: .normal)
        btnIndaernf.titleLabel?.textAlignment = .center
        btnIndaernf.titleLabel?.numberOfLines = 0
        btnIndaernf.titleLabel?.adjustsFontSizeToFitWidth = true
        
        btnIndaeref.setAttributedTitle(attributeString3, for: .normal)
        btnIndaeref.titleLabel?.textAlignment = .center
        btnIndaeref.titleLabel?.numberOfLines = 0
        btnIndaeref.titleLabel?.adjustsFontSizeToFitWidth = true
        
        btnExacadf.setAttributedTitle(attributeString4, for: .normal)
        btnExacadf.titleLabel?.textAlignment = .center
        btnExacadf.titleLabel?.numberOfLines = 0
        btnExacadf.titleLabel?.adjustsFontSizeToFitWidth = true
        
        lblfrancia.text = "F \nR \nA \nN \nC \nI \nA"
        lblfrancia.textAlignment = .center
        lblfrancia.numberOfLines = 0
        lblfrancia.adjustsFontSizeToFitWidth = true
    }

    func customNavigationBar() {
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.07122091204, green: 0.05044277757, blue: 0.1986504793, alpha: 1)
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "FRANCIA"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "imgBtnHamburguesa")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(btnMenuHamburguesa))
    }
    
    // ACTIONS
    
   /* @IBAction func btnActionConferenciasFrancia(_ sender: Any) {
        performSegue(withIdentifier: "conferenciasFranciaSegue", sender: self)
    }
    
    @IBAction func btnActionExpoEstaticaFrancia(_ sender: Any) {
        performSegue(withIdentifier: "expoEstaticaFranciaSegue", sender: self)
    }
    
    @IBAction func btnActionChaletsFrancia(_ sender: Any) {
        performSegue(withIdentifier: "chaletsFranciaSegue", sender: self)
    }
    */
    
    @objc func btnMenuHamburguesa() {
        if menu == false {
            viewFrancia.showMenu()
            menu = true
        }else if menu == true {
            viewFrancia.hideMenu(viewOptionSelect: viewOptionSelect)
            menu = false
        }
    }
    
    
    

}
