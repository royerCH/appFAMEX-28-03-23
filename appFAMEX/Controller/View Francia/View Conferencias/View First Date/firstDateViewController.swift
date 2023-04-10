//
//  firstDateViewController.swift
//  appFAMEX
//
//  Created by Desarrollador FAMEX on 08/11/22.
//

import UIKit
import CoreData
import Foundation



class firstDateViewController: UIViewController {
    
    // MARK: - Outlets
    
        // Views
    @IBOutlet weak var viewFirstDateFrancia: UIView!
    @IBOutlet weak var viewNamePabellon: UIView!

        // Table View
    
    @IBOutlet weak var tableViewConferenciasFrancia: UITableView!
    
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
        let sc = UISegmentedControl(items: ["26 de Abril \nMier", "27 de Abril \nJue", "28 de Abril \nVier"])              // Nombre de pabellones
        sc.selectedSegmentIndex = 0     // Posicion a desplegar del segmented control

        sc.addTarget(self, action: #selector(handlesegmentChange), for: .valueChanged)  // Target (indicador) de la posicion del segmented control
        return sc
    }()
    
    
    let pabellonA = ["13:00-14:00: Investigación en accidentes aéreos. Mtro. Ingeniero Aeronaútico Castillo ", "b", "c", "d", "e", " f"]
    let pabellonB = ["aa", "bb", "cc", "dd", "ee", "ff"]
    let pabellonC = ["aaa", "bbb", "ccc", "ddd", "eee", "fff"]
    

    
    
 
    
    
    
    // MARK: - View Life Cycle Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

       
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
        tableViewConferenciasFrancia.backgroundColor = .clear
        
        
            // Stack view
        let stackView = UIStackView(arrangedSubviews: [paddedStackview, viewNamePabellon, tableViewConferenciasFrancia ])
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
        
        tableViewConferenciasFrancia.reloadData()
        
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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            return pabellonA.count
        case 1:
            return pabellonB.count
        case 2:
            return pabellonC.count
        default:
            print("none")
            break
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            cell?.textLabel?.text = pabellonA[indexPath.row]
            cell?.backgroundColor = .clear
            cell?.textLabel?.textColor = .white
            cell?.textLabel?.numberOfLines = 3
            cell?.textLabel?.font = UIFont(name: "Arial", size: 14)
            

        case 1:
            cell?.textLabel?.text = pabellonB[indexPath.row]
        case 2:
            cell?.textLabel?.text = pabellonC[indexPath.row]
        default:
            break
        }
        return cell!
    }
    

    
    
}

    
