//
//  LoginUseCase.swift
//  Analytics
//
//  Created by Mario Alberto Barragán Espinosa on 05/06/21.
//

import Foundation

protocol LoginLoader {
    func login()
}

final class LoginUseCase: LoginLoader {
    func login() {
        print("Login success!")
    }
}

final class LoginUseCaseDecorator: LoginLoader {
    private let decoratee: LoginUseCase
    private let analyticsTracker: AnalyticsTracker
    
    init(decoratee: LoginUseCase, analyticsTracker: AnalyticsTracker) {
        self.decoratee = decoratee
        self.analyticsTracker = analyticsTracker
    }
    
    func login() {
        decoratee.login()
        analyticsTracker.track(analyticKey: "login tracker")
    }
}
