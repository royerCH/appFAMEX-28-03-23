//
//  Registrarse.swift
//  appFAMEX
//
//  Created by Desarrollador FAMEX on 09/03/23.
//

import Foundation

class NewUser{
    
    var user = "valerio@f-amex.com.mx"
    var password = "cerezo1987"
    var confirmPassword = "cerezo1897"
    
    
//    init(user: String, password: String, confirmPassword: String) {
//        self.user = user
//        self.password = password
//        self.confirmPassword = confirmPassword
//    }
    
    func getName() -> String {
        let users = "\(user)"
            return users
    }

    
     func mostrarInfo() -> String{
        
        let  datos = ("Usuario: \(user)\nContraseña: \(password)\nContraseña confirmada: \(confirmPassword)")
        return datos
    }
    

    
    func getPassword() -> String{
        
        _ = "\(password)"
        return password
    
    }
        
}


