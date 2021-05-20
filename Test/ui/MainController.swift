//
//  MainController.swift
//  Test
//
//  Created by Atlas Yazılım on 20.05.2021.
//

import UIKit


class MainController: BaseController {
    
    private let layout = MainLayout()
    private let feedController = FeedController()
    private let homeController = HomeController()
    
    
    override func loadView() {
        view = layout
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        feedController.add(to: self, container: layout.feedContainer)
        homeController.add(to: self, container: layout.homeContainer)
    }
    
    
    func buttonTestClicked() {
        let testController = TestController()
        
        present(testController, animated: true, completion: nil)
    }
}
