//
//  ViewController.swift
//  color-game
//
//  Created by Guilherme Schaidhauer de Castro on 26/12/23.
//

import UIKit

class FirstScreen: UIViewController {

    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 255/255, green: 100/255, blue: 97/255, alpha: 1)
        setupButton()
    }
    
    func setupButton() {
        view.addSubview(nextButton)
            
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = .systemBackground
        
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        let horizontalConstraint = NSLayoutConstraint(
            item: nextButton,
            attribute: NSLayoutConstraint.Attribute.centerX,
            relatedBy: NSLayoutConstraint.Relation.equal,
            toItem: view,
            attribute: NSLayoutConstraint.Attribute.centerX,
            multiplier: 1,
            constant: 0
        )
        
        let verticalConstraint = NSLayoutConstraint(
            item: nextButton,
            attribute: NSLayoutConstraint.Attribute.centerY,
            relatedBy: NSLayoutConstraint.Relation.equal,
            toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, 
            multiplier: 1,
            constant: 250
        )
        
        let widthConstraint = NSLayoutConstraint(
            item: nextButton,
            attribute: NSLayoutConstraint.Attribute.width,
            relatedBy: NSLayoutConstraint.Relation.equal,
            toItem: nil,
            attribute: NSLayoutConstraint.Attribute.notAnAttribute,
            multiplier: 1,
            constant: 100
        
        )
        
        let heightConstraint = NSLayoutConstraint(
            item: nextButton,
            attribute: NSLayoutConstraint.Attribute.height,
            relatedBy: NSLayoutConstraint.Relation.equal,
            toItem: nil,
            attribute: NSLayoutConstraint.Attribute.notAnAttribute,
            multiplier: 1,
            constant: 100
        )
        
        NSLayoutConstraint.activate([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
    }
        
    @objc func goToNextScreen() {
        let nextScreen = SecondScreen()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}

