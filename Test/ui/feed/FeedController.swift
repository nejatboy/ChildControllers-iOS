//
//  FeedController.swift
//  Test
//
//  Created by Atlas Yazılım on 20.05.2021.
//

import UIKit


class FeedController: BaseChildController {
    
    private let layout = FeedLayout()
    
    
    override func loadView() {
        view = layout
    }
}
