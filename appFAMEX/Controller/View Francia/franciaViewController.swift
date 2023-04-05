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
    @IBOutlet weak var btnrelmf: UIButton!
    @IBOutlet weak var btnianf: UIButton!
    @IBOutlet weak var btniaef: UIButton!
    @IBOutlet weak var btneaf: UIButton!
    
    
    @IBOutlet weak var lblfrancia: UILabel!
    
    @IBOutlet weak var imglink1: UIImageView!
    @IBOutlet weak var imglink2: UIImageView!
    @IBOutlet weak var imglink3: UIImageView!
    @IBOutlet weak var imglink4: UIImageView!
    @IBOutlet weak var imglink5: UIImageView!
    
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
        
        btnlink1.backgroundColor = .clear
        btnlink2.backgroundColor = .clear

        
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
    
    func customViews() {
        
        
        lblfrancia.text = " F\n R\n A\n N\n C\n I\n A"
        lblfrancia.numberOfLines = 0
        lblfrancia.textAlignment = .center
        lblfrancia.textColor = .white
        lblfrancia.font = UIFont(name: "Arial", size: 40)
        lblfrancia.adjustsFontSizeToFitWidth = true
        lblfrancia.minimumScaleFactor = 0.5
        // Views
    //    viewMainButtons.backgroundColor = .clear
        
        // Buttons

        
            // Clouser para subrallar
        
        
        btnrelmf.setTitle("Relacion \nMexico - Francia", for: .normal)
        btnrelmf.titleLabel?.textAlignment = .center
        btnrelmf.titleLabel?.numberOfLines = 0
        btnrelmf.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        btnrelmf.titleLabel?.textColor = .white
        
        
        btnianf.setTitle("Industria \naeronauttica \nfrancesa", for: .normal)
        btnianf.titleLabel?.textAlignment = .center
        btnianf.titleLabel?.numberOfLines = 0
        btnianf.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        btnrelmf.titleLabel?.textColor = .white

        
        btniaef.setTitle("Industria \naeroespacial \nfrancesa", for: .normal)
        btniaef.titleLabel?.textAlignment = .center
        btniaef.titleLabel?.numberOfLines = 0
        btniaef.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        btnrelmf.titleLabel?.textColor = .white

        
        btneaf.setTitle("Excelencia \nAcademica \nfrancesa", for: .normal)
        btneaf.titleLabel?.textAlignment = .center
        btneaf.titleLabel?.numberOfLines = 0
        btneaf.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        btnrelmf.titleLabel?.textColor = .white

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
    
    
    @IBAction func btnActionrelmf(_ sender: Any) {
        performSegue(withIdentifier: "relmfSegue", sender: self)
    }
    
    @IBAction func btnActionianf(_ sender: Any) {
        performSegue(withIdentifier: "aeronSegue", sender: self)
    }
    
    @IBAction func btnActioniaef(_ sender: Any) {
        performSegue(withIdentifier: "aeroeSegue", sender: self)
    }
    
    @IBAction func btnActioneaf(_ sender: Any) {
        performSegue(withIdentifier: "acadeSegue", sender: self)
    }
    
    @IBAction func goSiteLink1
    (_ sender: Any){
        if let url = URL(string:
                            "https://mx.ambafrance.org"){
            if #available(iOS 10, *){
                UIApplication.shared.open(url)
            }else{
                UIApplication.shared.openURL(url)
            }
        }
        
    }
    

    @IBAction func goSiteLink2
    (_ sender: Any){
        if let url = URL(string:
                            "https://www.franciamexico.com/es.html"){
            if #available(iOS 10, *){
                UIApplication.shared.open(url)
            }else{
                UIApplication.shared.openURL(url)
            }
        }
        
    }
    
    @IBAction func goSiteLink3
    (_ sender: Any){
        if let url = URL(string:
                            "https://mx.ambafrance.org"){
            if #available(iOS 10, *){
                UIApplication.shared.open(url)
            }else{
                UIApplication.shared.openURL(url)
            }
        }
        
    }
    
    @IBAction func goSiteLink4
    (_ sender: Any){
        if let url = URL(string:
                            "https://mx.ambafrance.org"){
            if #available(iOS 10, *){
                UIApplication.shared.open(url)
            }else{
                UIApplication.shared.openURL(url)
            }
        }
        
    }
    
    @IBAction func goSiteLink5
    (_ sender: Any){
        if let url = URL(string:
                            "https://mx.ambafrance.org"){
            if #available(iOS 10, *){
                UIApplication.shared.open(url)
            }else{
                UIApplication.shared.openURL(url)
            }
        }
        
    }
    
}
