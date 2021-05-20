//
//  BaseChildController.swift
//  Test
//
//  Created by Atlas Yazılım on 20.05.2021.
//

import UIKit


class BaseChildController: BaseController {
    
    
    func add(to parentController: BaseController, container: UIView? = nil) {
        parentController.addChild(self)
        parentController.view.addSubview(view)
        didMove(toParent: parent)
        
        guard let container = container else {
            view.frame = UIScreen.main.bounds
            return
        }
        
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: container.trailingAnchor),
            view.topAnchor.constraint(equalTo: container.topAnchor),
            view.bottomAnchor.constraint(equalTo: container.bottomAnchor)
        ])
    }
    
    
    func destroy() {
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
