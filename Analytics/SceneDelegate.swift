//
//  SceneDelegate.swift
//  Analytics
//
//  Created by Mario Alberto Barragán Espinosa on 05/06/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }        
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let viewController: ViewController = sb.instantiateViewController(identifier: String(describing: ViewController.self))
        
        self.window = UIWindow(windowScene: scene)
        self.window?.makeKeyAndVisible()
        self.window?.rootViewController = viewController
    }
}

