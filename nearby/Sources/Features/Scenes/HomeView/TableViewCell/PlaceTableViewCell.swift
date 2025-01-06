//
//  PlaceTableViewCell.swift
//  nearby
//
//  Created by Jean Ramalho on 06/01/25.
//
import Foundation
import UIKit

class PlaceTableViewCell: UITableViewCell {
    static let identifier: String = "PlaceTableViewCell"
    
    let itemImageView: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.layer.cornerRadius = 8
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = Typography.titleSM
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = Typography.textSM
        label.textColor = Colors.gray300
        return label
    }()
    
    let ticketIcon: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "ticket")
        image.tintColor = Colors.redBase
        return image
    }()
    
    let ticketLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = Typography.textXS
        return label
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 8
        view.layer.borderColor = Colors.gray200.cgColor
        view.layer.borderWidth = 1
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        addSubview(containerView)
        containerView.addSubview(itemImageView)
        containerView.addSubview(titleLabel)
        containerView.addSubview(descriptionLabel)
        containerView.addSubview(ticketIcon)
        containerView.addSubview(titleLabel)
        setupConstraints()
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            
            itemImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            itemImageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            itemImageView.widthAnchor.constraint(equalToConstant: 116),
            itemImageView.heightAnchor.constraint(equalToConstant: 104),
            
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: itemImageView.trailingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            descriptionLabel.leadingAnchor.constraint(equalTo: itemImageView.trailingAnchor, constant: 8),
            descriptionLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8),
            
            ticketIcon.leadingAnchor.constraint(equalTo: itemImageView.trailingAnchor, constant: 8),
            ticketIcon.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8),
            ticketIcon.widthAnchor.constraint(equalToConstant: 13),
            ticketIcon.heightAnchor.constraint(equalToConstant: 11),
            
            ticketLabel.centerXAnchor.constraint(equalTo: ticketIcon.centerXAnchor),
            ticketLabel.leadingAnchor.constraint(equalTo: ticketIcon.trailingAnchor, constant: 4)
        ])
    }
    
    func configure(with place: Place){
        itemImageView.image = UIImage(named: place.imageName)
        titleLabel.text = place.title
        descriptionLabel.text = place.description
        ticketLabel.text = "cupons disponíveis"
    }
}

