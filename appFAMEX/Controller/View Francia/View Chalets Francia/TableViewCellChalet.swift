//
//  TableViewCellChalet.swift
//  appFAMEX
//
//  Created by Desarrollador FAMEX on 17/11/22.
//

import UIKit

class TableViewCellChalet: UITableViewCell {
    
    
    @IBOutlet weak var viewChalet: UIView!
    @IBOutlet weak var imgBGChalet: UIImageView!
   
    @IBOutlet weak var imgEmpresa: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var txtViewDesc: UITextView!
    
    
    
    func configure(lblNameChalet: String, txtViewDescrip: String, imgEmpresaName: String) {
            lblName.text = lblNameChalet
            txtViewDesc.text = txtViewDescrip
            imgEmpresa.image = UIImage (named: imgEmpresaName)
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewChalet.backgroundColor = .clear
        lblName.textColor = .white
        txtViewDesc.textColor = .white
        
        
        
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }
 
}

