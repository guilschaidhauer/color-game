//
//  ViewController.swift
//  color-game
//
//  Created by Guilherme Schaidhauer de Castro on 26/12/23.
//

import UIKit

class FirstScreen: BasicScreen {
    
    let nextButtonCreator = NextButtonCreator()
    let nextButton = UIButton()
    
    override init(screenindex: Int) {
        super.init(screenindex: screenindex)
    }
    
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
        let nextScreen = SecondScreen(screenindex: 1)
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}
