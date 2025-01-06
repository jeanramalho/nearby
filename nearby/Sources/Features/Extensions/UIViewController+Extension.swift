//
//  UIViewController+Extension.swift
//  nearby
//
//  Created by Jean Ramalho on 06/01/25.
//
import Foundation
import UIKit

extension UIViewController {
    public func SetupContentViewToViewController(contentView: UIView){
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
}
