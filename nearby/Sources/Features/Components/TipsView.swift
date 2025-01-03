//
//  TipsView.swift
//  nearby
//
//  Created by Jean Ramalho on 03/01/25.
//
import Foundation
import UIKit

public class TipsView: UIView {
    private let iconImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init(icon: UIImage, title: String, description: String) {
        super.init(frame: .zero)
        setupComponent(icon: icon, title: title, description: description)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupComponent(icon: UIImage, title: String, description: String){
        iconImageView.image = icon
        titleLabel.text = title
        descriptionLabel.text = description
    }
    
    private func setupUI(){
        setupConstraints()
    }
    
    private func setupConstraints(){
        
    }
    
   
}
