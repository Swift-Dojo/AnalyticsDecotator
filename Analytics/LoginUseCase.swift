//
//  LoginUseCase.swift
//  Analytics
//
//  Created by Mario Alberto Barragán Espinosa on 05/06/21.
//

import Foundation

protocol LoginUseCaseOutput {
    func login()
}

final class LoginUseCase: LoginUseCaseOutput {
    
    func login() {
        print("Login success!")
    }
}
