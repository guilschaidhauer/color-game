//
//  SecondScreen.swift
//  color-game
//
//  Created by Guilherme Schaidhauer de Castro on 26/12/23.
//

import UIKit

class SecondScreen: BasicScreen {

    let nextButtonCreator = NextButtonCreator()
    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
    }
    
    func setupButton() {
        view.addSubview(nextButton)
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        nextButtonCreator.styleButton(nextButton: nextButton, view: view)
    }
        
    @objc func goToNextScreen() {
        let nextScreen = ThirdScreen(screenindex: 2)
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}
