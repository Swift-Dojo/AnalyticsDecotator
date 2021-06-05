//
//  ViewController.swift
//  Analytics
//
//  Created by Mario Alberto Barragán Espinosa on 05/06/21.
//

import UIKit

final class ViewController: UIViewController {
    
    var loginUseCase: LoginUseCaseOutput?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        loginUseCase?.login()
    }
}

