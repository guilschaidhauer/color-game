//
//  BasicScreen.swift
//  color-game
//
//  Created by Guilherme Schaidhauer de Castro on 26/12/23.
//

import UIKit

class BasicScreen: UIViewController {
    
    var screenIndex: Int
    
    init(screenindex: Int) {
        self.screenIndex = screenindex
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable, message: "Nibs are unsupported")
    public required init?(coder aDecoder: NSCoder) {
        fatalError("Nibs are unsupported")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // getting access to the window object from SceneDelegate
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
        let sceneDelegate = windowScene.delegate as? SceneDelegate
        else {
            return
        }
        
        view.backgroundColor = sceneDelegate.selectedColors[screenIndex]
    }
}
