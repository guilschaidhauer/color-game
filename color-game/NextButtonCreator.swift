//
//  NextButtonCreator.swift
//  color-game
//
//  Created by Guilherme Schaidhauer de Castro on 26/12/23.
//

import Foundation
import UIKit

class NextButtonCreator {
    
    func styleButton(nextButton: UIButton, view: UIView) {
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = .systemBackground
                
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
}
