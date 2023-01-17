//
//  MenuScreenView.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 13/01/23.
//

import UIKit

    class HomeScreenView: BaseView {

    lazy var imageViewLogo: UIImageView = {
    let image  = UIImageView(frame:CGRect(x:100, y:50, width:200, height:300));
    image.image = UIImage(named:"light.png")
    image.contentMode = .scaleAspectFit
    return image
    }()

    lazy var buttonCadastro: UIButton = {
    let button = UIButton()
    button.setTitle("Cadastrar Aluno", for: .normal)
    button.backgroundColor = .systemYellow
    button.setTitleColor(.white, for: .normal)
    button.frame = CGRect(x: 100, y: 605, width: 200, height: 50)
    button.layer.cornerRadius = 25
    return button
    }()

    lazy var buttonAverage: UIButton = {
    let button = UIButton()
    button.setTitle("Ver Lista", for: .normal)
    button.backgroundColor = .systemOrange
    button.setTitleColor(.white, for: .normal)
    button.frame = CGRect(x: 100, y: 670, width: 200, height: 50)
    button.layer.cornerRadius = 25
    return button
    }()

    override func addSubviews() {
        addSubview(buttonCadastro)
        addSubview(buttonAverage)
        addSubview(imageViewLogo)
        
}

}
