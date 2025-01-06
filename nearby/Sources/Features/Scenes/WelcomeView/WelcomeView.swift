//
//  WelcomeView.swift
//  nearby
//
//  Created by Jean Ramalho on 06/01/25.
//
import Foundation
import UIKit

class WelcomeView: UIView {
    private let logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "logo")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Boas vindas ao Nearby!"
        return label
    }()
    
    private let descriptitonLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tenha cupons de vantagens para usar em seus estabelicimentos favoritos."
        return label
    }()
    
    
}
