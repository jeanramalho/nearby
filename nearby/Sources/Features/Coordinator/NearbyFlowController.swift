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
        let startViewController = SplashViewController(contentView: contentView)
        self.navigationController = UINavigationController(rootViewController: startViewController)
        
        return navigationController ?? UINavigationController()
    }
}
