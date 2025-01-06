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
        label.numberOfLines = 0
        label.font = Typography.titleXL
        return label
    }()
    
    private let descriptitonLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tenha cupons de vantagens para usar em seus estabelicimentos favoritos."
        label.font = Typography.textMD
        label.numberOfLines = 0
        return label
    }()
    
    private let subTextForTipsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "Veja como funciona:"
        label.font = Typography.textMD
        return label
    }()
    
    private let tipsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 24
        return stackView
    }()
    
    private let startButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Começar", for: .normal)
        button.backgroundColor = Colors.greenBase
        button.setTitleColor(Colors.gray100, for: .normal)
        button.titleLabel?.font = Typography.action
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 8
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupTips()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        addSubview(logoImageView)
        addSubview(welcomeLabel)
        addSubview(descriptitonLabel)
        addSubview(subTextForTipsLabel)
        addSubview(tipsStackView)
        addSubview(startButton)
        setupConstraints()
    }
    
    private func setupTips(){
        guard let icon1 = UIImage(named: "mapIcon") else {return}
        guard let icon2 = UIImage(named: "qrcode") else {return}
        guard let icon3 = UIImage(named: "ticket") else {return}
        
        let tip1 = TipsView(icon: icon1, title: "Encontre estabelecimentos", description: "Veja locais perto de você que são parceiros Nearby")
        let tip2 = TipsView(icon: icon2, title: "Ative o cupom com QR Code", description: "Escaneie o código no estabelecimento para usar o benefício")
        let tip3 = TipsView(icon: icon3, title: "Garanta vantagens perto de você", description: "Ative cupons onde estiver, em diferentes tipos de estabelecimento")
        
        tipsStackView.addArrangedSubview(tip1)
        tipsStackView.addArrangedSubview(tip2)
        tipsStackView.addArrangedSubview(tip3)
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            logoImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            logoImageView.widthAnchor.constraint(equalToConstant: 48),
            logoImageView.heightAnchor.constraint(equalToConstant: 48),
            
            welcomeLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 24),
            welcomeLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            
            descriptitonLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 16),
            descriptitonLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            descriptitonLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            
            subTextForTipsLabel.topAnchor.constraint(equalTo: descriptitonLabel.bottomAnchor, constant: 24),
            subTextForTipsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            tipsStackView.topAnchor.constraint(equalTo: subTextForTipsLabel.bottomAnchor, constant: 24),
            tipsStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            tipsStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            
            startButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -24),
            startButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            startButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            startButton.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
}
