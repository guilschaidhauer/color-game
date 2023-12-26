//
//  ViewController.swift
//  color-game
//
//  Created by Guilherme Schaidhauer de Castro on 26/12/23.
//

import UIKit

class FirstScreen: UIViewController {

    let nextButtonCreator = NextButtonCreator()
    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 255/255, green: 100/255, blue: 97/255, alpha: 1)
        setupButton()
    }
    
    func setupButton() {
        view.addSubview(nextButton)
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        nextButtonCreator.styleButton(nextButton: nextButton, view: view)
    }
        
    @objc func goToNextScreen() {
        let nextScreen = SecondScreen()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}
