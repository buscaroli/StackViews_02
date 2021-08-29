//
//  ViewController.swift
//  StackViews_02
//
//  Created by Matteo on 29/08/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(containerStackView)
        setupLayout()
    }
    
    
    let containerStackView: UIStackView = {
        let iconConfig = UIImage.SymbolConfiguration(pointSize: 80.0)
        
        let container = UIStackView()
        container.axis = .vertical
        container.alignment = .center
        container.distribution = .equalSpacing
        container.spacing = 30
        container.translatesAutoresizingMaskIntoConstraints = false
        
        let icon1 = UIImageView(image: UIImage(systemName: "plus", withConfiguration: iconConfig))
        icon1.translatesAutoresizingMaskIntoConstraints = false
        let icon2 = UIImageView(image: UIImage(systemName: "person", withConfiguration: iconConfig))
        icon2.translatesAutoresizingMaskIntoConstraints = false
        let icon3 = UIImageView(image: UIImage(systemName: "printer", withConfiguration: iconConfig))
        icon3.translatesAutoresizingMaskIntoConstraints = false
        
        container.addArrangedSubview(icon1)
        container.addArrangedSubview(icon2)
        container.addArrangedSubview(icon3)
        
        return container
    }()
    
    func setupLayout() {
        containerStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        containerStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        containerStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

}

