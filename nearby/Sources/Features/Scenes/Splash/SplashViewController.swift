//
//  SplashViewController.swift
//  nearby
//
//  Created by Jean Ramalho on 02/01/25.
//
import Foundation
import UIKit

class SplashViewController: ViewController {
    let contentView: SplashView?
    
    init(contentView: SplashView){
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }
    
    @MainActor required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        self.view.addSubview(contentView)
        
        setup()
    }
    
    private func setup(){
        setupConstraints()
    }
    
    private func setupConstraints(){
        
    }
}
