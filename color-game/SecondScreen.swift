//
//  SecondScreen.swift
//  color-game
//
//  Created by Guilherme Schaidhauer de Castro on 26/12/23.
//

import UIKit

class SecondScreen: UIViewController {

    let nextButtonCreator = NextButtonCreator()
    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // getting access to the window object from SceneDelegate
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
        let sceneDelegate = windowScene.delegate as? SceneDelegate
        else {
            return
        }
        
        view.backgroundColor = sceneDelegate.selectedColors[1]

        setupButton()
    }
    
    func setupButton() {
        view.addSubview(nextButton)
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        nextButtonCreator.styleButton(nextButton: nextButton, view: view)
    }
        
    @objc func goToNextScreen() {
        let nextScreen = ThirdScreen()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}
