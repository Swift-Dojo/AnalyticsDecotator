//
//  LoginUseCase.swift
//  Analytics
//
//  Created by Mario Alberto Barragán Espinosa on 05/06/21.
//

import Foundation

final class LoginUseCase {
    private let analyticTracker = AnalyticsTracker()
    
    func login() {
        print("Login success!")
        analyticTracker.track(analyticKey: "login analytic")
    }
}
