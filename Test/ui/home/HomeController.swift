//
//  HomeController.swift
//  Test
//
//  Created by Atlas Yazılım on 20.05.2021.
//

import Foundation


class HomeController: BaseChildController {
    
    private let layout = HomeLayout()
    
    
    override func loadView() {
        view = layout
    }
    
    
    func buttonTestClicked() {
        (parent as? MainController)?.buttonTestClicked()
    }
}
