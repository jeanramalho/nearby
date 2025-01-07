//
//  HomeView.swift
//  nearby
//
//  Created by Jean Ramalho on 06/01/25.
//
import Foundation
import MapKit

class HomeView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        setupConstraints()
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            
        ])
    }
}
