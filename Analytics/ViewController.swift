//
//  ViewController.swift
//  Analytics
//
//  Created by Mario Alberto Barragán Espinosa on 05/06/21.
//

import UIKit

final class ViewController: UIViewController {
    
    private let loginUseCase = LoginUseCase()
    private let analyticTracker = AnalyticsTracker()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        loginUseCase.login()
        analyticTracker.track(analyticKey: "login analytic")
    }
}

