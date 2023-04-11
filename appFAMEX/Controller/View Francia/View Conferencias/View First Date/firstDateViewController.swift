//
//  firstDateViewController.swift
//  appFAMEX
//
//  Created by Desarrollador FAMEX on 08/11/22.
//

import UIKit
import CoreData
import Foundation

class Section{//Se crea la estructura de datos
    let title: String
    let options: [String]
    var isOpened: Bool = false
    
    init(title: String,
         options: [String],
         isOpened: Bool = false
    
    ) {
        self.title = title
        self.options = options
        self.isOpened = isOpened
    }
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
        sc.selectedSegmentIndex = 0     // Posicion a desplegar del segmented control

        sc.addTarget(self, action: #selector(handlesegmentChange), for: .valueChanged)  // Target (indicador) de la posicion del segmented control
        return sc
    }()
    
    //Se declara la tabla
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    private var sections = [Section]()
    

    // MARK: - View Life Cycle Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        //Cargar a vista la estructura Sections
        sections = [
            Section(title: "Auditorio Alfa", options: [1, 2, 3].compactMap({return "Cell \($0)"})),
            Section(title: "Auditorio Bravo", options: [1, 2, 3].compactMap({return "Cell \($0)"})),
            Section(title: "Auditorio Delta", options: [1, 2, 3].compactMap({return "Cell \($0)"})),
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
        
        
        
            // Stack view
        let stackView = UIStackView(arrangedSubviews: [paddedStackview, viewNamePabellon, tableView])
        stackView.axis = .vertical
            
            // Agregar el Stack view a la view viewFirstDateFrancia
        viewFirstDateFrancia.addSubview(stackView)//método para agregar vistas a un stack
        
            // Margenes del Stack view
        stackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 12, bottom: view.bottomAnchor, paddingBottom: .zero, left: view.leftAnchor, paddingLeft: .zero, right: view.rightAnchor, paddingRight: .zero, width: 0, height: 0)
        
        
        
        
        
        
            // Buttons
//        btnRightPabellon.tag = 0        // Identificador o tag del boton Derecho
//        btnRightPabellon.round()
//        btnRightPabellon.backgroundColor = .white
//
//        btnLeftPabellon.tag = 1         // Identificador o tag del boton Izquierdo
//        btnLeftPabellon.round()
//        btnLeftPabellon.backgroundColor = .white
//
//            // Labels
//        lblNameAuditorio.text = "Auditorio Alfa"
//        lblNameAuditorio.textAlignment = .center
//        lblNameAuditorio.textColor = .white
//
//        lblNamePabellon.text = "Pabellon A"
//        lblNamePabellon.textAlignment = .center
//        lblNamePabellon.textColor = .white
    }
    
      
    // MARK: - Action Methods
    
        // Funcion para desplegar las celdas
    @objc fileprivate func handlesegmentChange() {
        print(segmentedControl.selectedSegmentIndex)
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            
            print("case 0")
            
        case 1:
            print("A")
        case 2:
            print("B")
        case 3:
            print("C")
        case 4:
            print("D")
        default:
            print("no Value")
        }
        
       // tableViewConferenciasFrancia.reloadData()
        
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
        return sections.count
    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { primera declaración de esta función
//        return 10
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {//así queda lo que era en línea 207
           let section = sections[section]
        if section.isOpened{
            return section.options.count + 1
        }else{
            return 1
        }
       }
    // esta función se declara así para pruebas
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = "Hello"
//        return cell
//    }
                //de esta manera queda
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                cell.textLabel?.text = sections[indexPath.section].title
                return cell
            }
            return UITableViewCell()
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
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
    
    
    
    
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
//
//        switch segmentedControl.selectedSegmentIndex {
//        case 0:
////            cell?.textLabel?.text = pabellonA[indexPath.row]
////            cell?.backgroundColor = .clear
////            cell?.textLabel?.textColor = .white
////            cell?.textLabel?.numberOfLines = 3
////            cell?.textLabel?.font = UIFont(name: "Arial", size: 14)
//
//
//        case 1:
//           // cell?.textLabel?.text = pabellonB[indexPath.row]
//        case 2:
//            //cell?.textLabel?.text = pabellonC[indexPath.row]
//        default:
//            break
//        }
//        return cell
//    }
//

    
    
}


    
