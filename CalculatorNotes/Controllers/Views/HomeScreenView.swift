//
//  MenuScreenView.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 13/01/23.
//

import UIKit

class HomeScreenView: BaseView {
    
    lazy var imageViewLogo: UIImageView = {
        let image  = UIImageView(frame:CGRect(x: 100, y: 50, width: 200, height: 300));
        image.image = UIImage(named:"graduation.png")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var buttonRegister: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastrar Matéria", for: .normal)
        button.backgroundColor = .systemYellow
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: 100, y: 605, width: 200, height: 50)
        button.layer.cornerRadius = 25
        return button
    }()
    
    lazy var buttonList: UIButton = {
        let button = UIButton()
        button.setTitle("Ver Lista", for: .normal)
        button.backgroundColor = .systemOrange
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: 100, y: 670, width: 200, height: 50)
        button.layer.cornerRadius = 25
        return button
    }()
    
    lazy var gradientLayer: CAGradientLayer = {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [UIColor.systemBlue.cgColor, UIColor.systemYellow.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.1, y: 1.1)
        return gradientLayer
    }()
    
    override func addSubviews() {
        layer.addSublayer(gradientLayer)
        addSubview(buttonRegister)
        addSubview(buttonList)
        addSubview(imageViewLogo)
    }
    
}
