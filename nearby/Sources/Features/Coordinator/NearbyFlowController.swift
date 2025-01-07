//
//  nearbyFlowController.swift
//  nearby
//
//  Created by Jean Ramalho on 02/01/25.
//

import Foundation
import UIKit

class NearbyFlowController {
    private var navigationController: UINavigationController?
    
    public init(){
        
    }
    
    func start() -> UINavigationController {
        let contentView = SplashView()
//        let startViewController = SplashViewController(contentView: contentView, delegate: self)
        let startViewController = HomeViewController()
        self.navigationController = UINavigationController(rootViewController: startViewController)
        
        return navigationController ?? UINavigationController()
    }
}

extension NearbyFlowController: SplashFlowDelegate {
    func decideNavigationFlow() {
        let contentView = WelcomeView()
        let welcomeViewController = WelcomeViewController(contentView: contentView)
        navigationController?.pushViewController(welcomeViewController, animated: true)
    }
    
}
