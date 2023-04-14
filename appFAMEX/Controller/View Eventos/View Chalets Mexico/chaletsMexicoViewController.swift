//
//  chaletsMexicoViewController.swift
//  appFAMEX
//
//  Created by Desarrollador FAMEX on 23/11/22.
//

import UIKit

class chaletsMexicoViewController: UIViewController {
    
    // MARK: - Views
        // Views
    @IBOutlet weak var viewNameChaletMex: UIView!
    @IBOutlet weak var viewChaletMex: UIView!
    @IBOutlet weak var viewImgLblChaletMex: UIView!
    
        // Images
    @IBOutlet weak var imgBGChaletMexico: UIImageView!
    @IBOutlet weak var imgBarraAuditorio: UIImageView!
    @IBOutlet weak var imgIconChaletsMex: UIImageView!
    
    
        // Labels
    @IBOutlet weak var lblChaletMex: UILabel!
    
    
        // Table View
    @IBOutlet weak var tableViewChaletMex: UITableView!
    
    
  
    //MARK: - Properties
    
        // Campos del objeto Chalet
    struct Bloque1 {                   // Campos del Chalet
        let lblNameChalet: String       // Nombre del chalet
        let txtViewDescrip: String   // Descripcion del chalet
        let imgEmpresaChalet: String        // Nombre de la image del chalet
    }
    
    
    struct Bloque1Data{
        
        var member : [Bloque1]
        
        init(){
            
            self.member = []
            memberInit()
    }
    
     private mutating func memberInit(){
        
        member.append(Bloque1(lblNameChalet: "Air Mobility", txtViewDescrip: "Somos un equipo de empresarios mexicanos con experiencia en sectores de telecomunicaciones, tecnologia y negocios.\n+(52) 55 85170379 / 7353922083 \ncristina.lara@airmobility.com.mx \nGrecia 1896 No. 25, Colonia Olimpica, Coyoacan, Ciudad de Mexico, C.P. 04710 ", imgEmpresaChalet: "imgAddConferencia.jpg"))
        member.append(Bloque1(lblNameChalet: "Spacelab", txtViewDescrip: "Spacelab es una empresa mexicana que crea productos disruptivos para la industria aeroespacial y de seguridad. Ubicada en Monterrey, Nuevo Leon, esta startup tecnologica esta dedicada al diseño y manufactura de vehiculos autonomos personalizados, aereos o terrestres. \n+52 (81) 34686324 \nhrenovato@spacelab.pro \nJosè Trinidad Villagomez Norte No. 606, Monterrey Centro, Monterrey, Nuevo Leon. C.P. 64000", imgEmpresaChalet: "imgAddConferencia.jpg"))
        member.append(Bloque1(lblNameChalet: "TPS Armoning", txtViewDescrip: "TPS® es una empresa 100% mexicana que ofrece los productos y servicios en blindaje \n+ (52) 55 5339 8059 \ndirecciongeneral@tps.com.mx \nFrancisco I. Madero 234, Frac. Industrial el Lechugal, Santa Catarina, Nuevo Leon, C.P. 66376", imgEmpresaChalet: "imgAddConferencia.jpg"))
        member.append(Bloque1(lblNameChalet: "Bell Helicopters", txtViewDescrip: "Bell Helicopter Textron es una ", imgEmpresaChalet: "imgAddConferencia.jpg"))
        member.append(Bloque1(lblNameChalet: "STAM (Servicio Tecnico Aereo de \nMexico)", txtViewDescrip: "STAM llega a M", imgEmpresaChalet: "imgAddConferencia.jpg"))
        member.append(Bloque1(lblNameChalet: "Airbus", txtViewDescrip: "Airbus es un pionero", imgEmpresaChalet: "imgAddConferencia.jpg"))
        member.append(Bloque1(lblNameChalet: "Aeromexico", txtViewDescrip: "Aeromexico es la aerolinea", imgEmpresaChalet: "imgAddConferencia.jpg"))
        
    }
    }//fin del bloque 1 de datos
    
    
    struct Bloque2 {
        let lblNameChalet: String       // Nombre del chalet
        let txtViewDescrip: String   // Descripcion del chalet
        let imgEmpresaChalet: String
    }//fin de la estructura del bloque 2
    
    
    struct Bloque2Data {
        var member : [Bloque2]
        
        init (){
            
            self.member = []
            memberInit()
        }
        
        private mutating func memberInit (){
            
            member.append(Bloque2(lblNameChalet: "Viva Aerobus", txtViewDescrip: "Viva Aerobus es una ", imgEmpresaChalet: "imgAddConferencia.jpg"))
            member.append(Bloque2(lblNameChalet: "IBN INDUSTRIES", txtViewDescrip: "Somos un grupo especializado", imgEmpresaChalet: "imgAddConferencia.jpg"))
            member.append(Bloque2(lblNameChalet: "CRAFT Avia Center", txtViewDescrip: "Nuestro personal calificado", imgEmpresaChalet: "imgAddConferencia.jpg"))
        }
        

    }// Fin de los datos del Bloque 2
    
    
    //Iniciar una variable con los datos de la estructura de cada bloque pero no inicializarlas con el mismo nombre del struct
    private let Bloque1Datos = Bloque1Data()
    
    private let Bloque2Datos = Bloque2Data()
    
    
    
    
    //contenido del Bloque 1 en las celdas
 
    
        // Objeto Segmented Control
    private let segmentedControlBlocksChaletMex: UISegmentedControl = {
        let sc = UISegmentedControl(items: ["Bloque 1", "Bloque 2"])     // Se inicializa el segmented control
        sc.selectedSegmentIndex = 0                         // Posicion a desplegar del segmented control
        sc.addTarget(self, action: #selector(handlesegmentChange), for: .valueChanged)  // Target (indicador) de la posicion del segmented control
        return sc
        
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        viewImgLblChaletMex.backgroundColor = .clear
        lblChaletMex.text = "Chalets"
        lblChaletMex.textColor = .white

   
        let paddedStackviewMex = UIStackView(arrangedSubviews: [segmentedControlBlocksChaletMex])
        paddedStackviewMex.layoutMargins = .init(top: 12, left: 12, bottom: 12, right: 12)    // Margenes del segmentedControl
        paddedStackviewMex.isLayoutMarginsRelativeArrangement = true

        let stackViewMex = UIStackView(arrangedSubviews: [viewNameChaletMex, paddedStackviewMex, tableViewChaletMex])
        stackViewMex.axis = .vertical

        viewChaletMex.addSubview(stackViewMex)
        stackViewMex.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: .zero, bottom: view.bottomAnchor, paddingBottom: .zero, left: view.leftAnchor, paddingLeft: .zero, right: view.rightAnchor, paddingRight: .zero, width: 0, height: 0)

        tableViewChaletMex.delegate = self
        tableViewChaletMex.dataSource = self
        tableViewChaletMex.backgroundColor = .clear
        
        tableViewChaletMex.register(UINib(nibName: "TableViewCellChalet", bundle: nil), forCellReuseIdentifier: "cellChalet")
      
   
 
    }//Fin del Override
    
    
    //Esta funciòn sirve para volver a cargar los datos al cambio de pantalla en el segmented control
    @objc fileprivate func handlesegmentChange() {
        
        switch segmentedControlBlocksChaletMex.selectedSegmentIndex {
        case 0:
            tableViewChaletMex.reloadData()
        case 1:
            tableViewChaletMex.reloadData()
        default:
            break
        }
        tableViewChaletMex.reloadData()
    }//Cierre de la funcion handlesegmentChange()
    

}




    // MARK: - UITableViewDelegate, UITableViewDataSource
extension chaletsMexicoViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        switch segmentedControlBlocksChaletMex.selectedSegmentIndex {
                case 0:
                    return Bloque1Datos.member.count
                case 1:
                    return Bloque2Datos.member.count
                default:
                    break
                }
                return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
// let cell = tableView.dequeueReusableCell(withIdentifier: "cellChalet", for: indexPath) as TableViewCellChalet
        guard let bloque1Cell = tableView.dequeueReusableCell(withIdentifier: "cellChalet") as? TableViewCellChalet else { return UITableViewCell() }
        guard let bloque2Cell = tableView.dequeueReusableCell(withIdentifier: "cellChalet") as? TableViewCellChalet else { return UITableViewCell() }
               
        switch segmentedControlBlocksChaletMex.selectedSegmentIndex {
        case 0:
            bloque1Cell.configure(lblNameChalet: Bloque1Datos.member[indexPath.row].lblNameChalet, txtViewDescrip: Bloque1Datos.member[indexPath.row].txtViewDescrip, imgEmpresaName: Bloque1Datos.member[indexPath.row].imgEmpresaChalet)
            return bloque1Cell
        case 1:
            bloque2Cell.configure(lblNameChalet: Bloque2Datos.member[indexPath.row].lblNameChalet, txtViewDescrip: Bloque2Datos.member[indexPath.row].txtViewDescrip, imgEmpresaName: Bloque2Datos.member[indexPath.row].imgEmpresaChalet)
            return bloque2Cell
        default:
            break
        }
        
        return bloque1Cell
    }
    
    
}

