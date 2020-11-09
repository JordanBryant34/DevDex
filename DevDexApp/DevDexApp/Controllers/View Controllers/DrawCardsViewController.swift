//
//  DrawCardsViewController.swift
//  DevDexApp
//
//  Created by Jordan Bryant on 11/9/20.
//

import UIKit

class DrawCardsViewController: UIViewController {
    
    let youGotLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 25)
        label.textAlignment = .center
        label.textColor = .white
        label.sizeToFit()
        label.alpha = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let cardView: CardCollectionViewCell = {
        let view = CardCollectionViewCell()
        view.nameLabel.text = "Jordan"
        view.powerLevelLabel.text = "Power: 100"
        view.alpha = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let drawButton: UIButton = {
        let button = UIButton()
        button.setTitle("Draw Card", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemIndigo
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 30
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        drawButton.addTarget(self, action: #selector(drawCard), for: .touchUpInside)
        
        setupViews()
    }
    
    private func setupViews() {
        view.backgroundColor = .devDexBlue()
        
        view.addSubview(drawButton)
        view.addSubview(cardView)
        view.addSubview(youGotLabel)
        
        drawButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        drawButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        drawButton.setHeightAndWidthConstants(height: 60, width: view.frame.width * 0.7)
        
        cardView.centerInView(view: view)
        cardView.setHeightAndWidthConstants(height: view.frame.width * 0.7 * (16/10), width: view.frame.width * 0.7)
        
        youGotLabel.bottomAnchor.constraint(equalTo: cardView.topAnchor, constant: -15).isActive = true
        youGotLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc private func drawCard() {
        guard let drawnCard = CardController.shared.drawCard() else { return }
        
        cardView.card = drawnCard
        youGotLabel.text = "You got \(drawnCard.name)!"
        
        UIView.animate(withDuration: 0.3) {
            self.cardView.alpha = 1
            self.youGotLabel.alpha = 1
        }
    }
    
}
