//
//  CardCollectionViewCell.swift
//  DevDexApp
//
//  Created by Jordan Bryant on 11/9/20.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .white
        label.textAlignment = .left
        label.sizeToFit()
        label.text = "Jordan"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let powerLevelLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.textColor = .secondaryLabelColor()
        label.sizeToFit()
        label.text = "Power: 100"
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17)
        label.textColor = .white
        label.text = "Description: "
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let personDescriptionLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 15)
        label.textColor = .secondaryLabelColor()
        label.sizeToFit()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "Blah blah this is a test description that will go multiple lines"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let strengthLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17)
        label.textColor = .white
        label.text = "Strength: "
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let weaknessLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17)
        label.textColor = .white
        label.text = "Weakness: "
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let personStrengthLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 15)
        label.textColor = .secondaryLabelColor()
        label.sizeToFit()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "Hair Game"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let personWeaknessLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 15)
        label.textColor = .secondaryLabelColor()
        label.sizeToFit()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "Beard Game"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let cardImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .systemIndigo
        imageView.layer.masksToBounds = true
        imageView.backgroundColor = .devDexBlue()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var card: Card? {
        didSet {
            setData()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.masksToBounds = true
        layer.cornerRadius = 10
        layer.borderWidth = 1
        layer.borderColor = UIColor.systemIndigo.cgColor
        
        setupViews()
    }
    
    private func setupViews() {
        addSubview(nameLabel)
        addSubview(powerLevelLabel)
        addSubview(cardImageView)
        addSubview(descriptionLabel)
        addSubview(personDescriptionLabel)
        addSubview(strengthLabel)
        addSubview(weaknessLabel)
        addSubview(personStrengthLabel)
        addSubview(personWeaknessLabel)
        
        backgroundColor = .devDexDarkBlue()
        
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
        
        powerLevelLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -15).isActive = true
        powerLevelLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15).isActive = true
        
        cardImageView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 30).isActive = true
        cardImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        cardImageView.setHeightAndWidthConstants(height: frame.width * 0.6, width: frame.width * 0.6)
        cardImageView.layer.cornerRadius = frame.width * 0.3
        
        descriptionLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 15).isActive = true
        
        personDescriptionLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
        personDescriptionLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10).isActive = true
        personDescriptionLabel.preferredMaxLayoutWidth = frame.width - 30
        
        strengthLabel.anchor(personDescriptionLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: centerXAnchor, topConstant: 20, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 22.5)
        weaknessLabel.anchor(personDescriptionLabel.bottomAnchor, left: centerXAnchor, bottom: nil, right: rightAnchor, topConstant: 20, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 22.5)
        
        personStrengthLabel.centerXAnchor.constraint(equalTo: strengthLabel.centerXAnchor).isActive = true
        personStrengthLabel.topAnchor.constraint(equalTo: strengthLabel.bottomAnchor, constant: 10).isActive = true
        personStrengthLabel.preferredMaxLayoutWidth = frame.width / 2 - 15
        
        personWeaknessLabel.centerXAnchor.constraint(equalTo: weaknessLabel.centerXAnchor).isActive = true
        personWeaknessLabel.topAnchor.constraint(equalTo: weaknessLabel.bottomAnchor, constant: 10).isActive = true
        personWeaknessLabel.preferredMaxLayoutWidth = frame.width / 2 - 15
    }
    
    private func setData() {
        cardImageView.image = nil
        
        guard let card = card else { return }
        
        nameLabel.text = card.name
        powerLevelLabel.text = "Power: \(card.powerLevel)"
        personDescriptionLabel.text = card.description
        personStrengthLabel.text = card.strength
        personWeaknessLabel.text = card.weakness
        cardImageView.image = UIImage(named: card.name)
    }
    
}
