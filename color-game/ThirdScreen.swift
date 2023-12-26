//
//  ThirdScreen.swift
//  color-game
//
//  Created by Guilherme Schaidhauer de Castro on 26/12/23.
//

import UIKit

class ThirdScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // getting access to the window object from SceneDelegate
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
        let sceneDelegate = windowScene.delegate as? SceneDelegate
        else {
            return
        }
        
        view.backgroundColor = sceneDelegate.selectedColors[2]
    }
}
