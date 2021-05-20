//
//  TestController.swift
//  Test
//
//  Created by Atlas Yazılım on 20.05.2021.
//

import UIKit


class TestController: BaseController {
    
    
    override init() {
        super.init()
        
        modalPresentationStyle = .fullScreen
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
    }
}
