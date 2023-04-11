//
//  firstDateViewController.swift
//  appFAMEX
//
//  Created by Desarrollador FAMEX on 08/11/22.
//

import UIKit
import CoreData
import Foundation

struct cellDatas {
    var opened = Bool()
    var title = String()
    var secctionData = [String]()
}



class firstDateViewController: UIViewController {
    
    // MARK: - Outlets
    
        // Views
    @IBOutlet weak var viewFirstDateFrancia: UIView!
    @IBOutlet weak var viewNamePabellon: UIView!

        // Table View
    
    //@IBOutlet weak var tableViewConferenciasFrancia: UITableView!
    
        // Images
    @IBOutlet weak var imgBG: UIImageView!
    @IBOutlet weak var imgIconPabellon: UIImageView!
    
        // Labels
    @IBOutlet weak var lblNameAuditorio: UILabel!
    @IBOutlet weak var lblNamePabellon: UILabel!
    
        // Buttons
    @IBOutlet weak var btnRightPabellon: UIButton!
    @IBOutlet weak var btnLeftPabellon: UIButton!
    
        // Segmented Control
    let segmentedControl: UISegmentedControl = {                                        // Objeto Segmented Control
        let sc = UISegmentedControl(items: ["26 de Abril ", "27 de Abril ", "28 de Abril"])              // Nombre de pabellones
        sc.selectedSegmentIndex = 0
        // Posicion a desplegar del segmented control

        sc.addTarget(self, action: #selector(handlesegmentChange), for: .valueChanged)  // Target (indicador) de la posicion del segmented control
        return sc
    }()
    
    //Se declara la tabla
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    private var sections = [cellDatas]()
    private var sectionsA = [cellDatas]()
    private var sectionsB = [cellDatas]()
    

    // MARK: - View Life Cycle Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        sections = [
            cellDatas(opened: false, title: "Auditorio Alfa", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio Bravo", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio Coca", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio Delta", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio Eco", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio F", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio G", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio H", secctionData: ["cell1","cell2","cell3"]),
                    ]
        
        sectionsA = [
            cellDatas(opened: false, title: "Auditorio Alfa", secctionData: ["cell A","cell B","cell C"]),
            cellDatas(opened: false, title: "Auditorio Bravo", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio Coca", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio Delta", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio Eco", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio F", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio G", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio H", secctionData: ["cell1","cell2","cell3"]),
        ]
        
        sectionsB = [
            cellDatas(opened: false, title: "Auditorio Alfa", secctionData: ["cell a","cell b","cell c"]),
            cellDatas(opened: false, title: "Auditorio Bravo", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio Coca", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio Delta", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio Eco", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio F", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio G", secctionData: ["cell1","cell2","cell3"]),
            cellDatas(opened: false, title: "Auditorio H", secctionData: ["cell1","cell2","cell3"]),
        ]
        
        
        
        customViews()

    }
    
    // MARK: - Methods
    
        // Funcion para personalizar las views
    func customViews() {
        
            // Views
        viewNamePabellon.heightAnchor.constraint(equalToConstant: 50).isActive = true
        viewNamePabellon.backgroundColor = .clear
        
            // Segmented Control
        let paddedStackview = UIStackView(arrangedSubviews: [segmentedControl])
        paddedStackview.layoutMargins = .init(top: 12, left: 12, bottom: 12, right: 12)    // Margenes del segmentedControl
        paddedStackview.isLayoutMarginsRelativeArrangement = true
        

            // Table view
        
        tableView.backgroundColor = .clear
        
            // Stack view
        let stackView = UIStackView(arrangedSubviews: [paddedStackview, viewNamePabellon, tableView])
        stackView.axis = .vertical
            
            // Agregar el Stack view a la view viewFirstDateFrancia
        viewFirstDateFrancia.addSubview(stackView)//método para agregar vistas a un stack
        
            // Margenes del Stack view
        stackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 12, bottom: view.bottomAnchor, paddingBottom: .zero, left: view.leftAnchor, paddingLeft: .zero, right: view.rightAnchor, paddingRight: .zero, width: 0, height: 0)

        
            // Buttons
        btnRightPabellon.tag = 0        // Identificador o tag del boton Derecho
        btnRightPabellon.round()
        btnRightPabellon.backgroundColor = .white

        btnLeftPabellon.tag = 1         // Identificador o tag del boton Izquierdo
        btnLeftPabellon.round()
        btnLeftPabellon.backgroundColor = .white

            // Labels
        lblNameAuditorio.text = "Auditorio Alfa"
        lblNameAuditorio.textAlignment = .center
        lblNameAuditorio.textColor = .white

        lblNamePabellon.text = "Pabellon A"
        lblNamePabellon.textAlignment = .center
        lblNamePabellon.textColor = .white
    
        _ = sections
    }
    
      
    // MARK: - Action Methods
    
        // Funcion para desplegar las celdas
    @objc fileprivate func handlesegmentChange() {
        print(segmentedControl.selectedSegmentIndex)
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            _ = sections
        case 1:
            _ = sectionsA
        case 2:
            _ = sectionsB
        default:
            print("non Data")
        }

        tableView.reloadData()

    }
    
        // Funcion para cambiar entre pabellones con los botones
//    @IBAction func btnActionMoveSegmentedControl(_ sender: UIButton) {
//
//        if sender.tag == 0 {
//            btnRightPabellon.bounce()
//            segmentedControl.selectedSegmentIndex += 1
//
//            print(segmentedControl.selectedSegmentIndex)
//            handlesegmentChange()
//        } else {
//            btnLeftPabellon.bounce()
//            segmentedControl.selectedSegmentIndex -= 1
//
//            if segmentedControl.selectedSegmentIndex == -1 {
//                segmentedControl.selectedSegmentIndex = 0
//                handlesegmentChange()
//            }
//
//            handlesegmentChange()
//
//        }
//
//
//    }
//

}

extension firstDateViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionsA.count
    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { primera declaración de esta función para realizar pruebas
//        return 10
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {//así queda lo que era en línea 207
      if sections[section].opened == true {
            return sections[section].secctionData.count + 1
        }else{
            return 1
        }
        
       }
    
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            _ = indexPath.row - 1
            if indexPath.row == 0 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {return UITableViewCell()}
                cell.textLabel?.text = sections[indexPath.section].title
                cell.backgroundColor = .clear
                cell.textLabel?.textColor = .white
                return cell
            }else{
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {return UITableViewCell()}
                cell.textLabel?.text = sections[indexPath.section].secctionData[indexPath.row - 1]
                return cell
            }
            
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        sections[indexPath.section].opened = !sections[indexPath.section].opened
        tableView.reloadSections([indexPath.section], with: .none)
    }
    
    
//        switch segmentedControl.selectedSegmentIndex{
//        case 0:
//        print("Hello1")
//        //return pabellonA.count
//            print("Hello2")
//        case 1:
//            //return pabellonB.count
//            print("Hello3")
//        case 2:
//            //return pabellonC.count
//            print("Hello4")
//        default:
//            print("none")
//            break
//        }
//        return 0
//    }
//
    
    
    
    


    
    
}


    
