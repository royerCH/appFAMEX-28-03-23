//
//  Registrarse.swift
//  appFAMEX
//
//  Created by Desarrollador FAMEX on 09/03/23.
//

import Foundation

class UserNew{
    
    var user = " "
    var password = " "
    var confirmPassword = " "
    
    
    init(user: String, password: String, confirmPassword: String) {
        self.user = user
        self.password = password
        self.confirmPassword = confirmPassword
    }
    
    
    func crearUsuario() {
        print("Ususario creado")
    }
    
    func mostrarInfo(){
        
        print ("\(user), \(password), \(confirmPassword)")
    }
    
    func obtenerNombre(){
        
        print("\(user)")
    }
        
}


