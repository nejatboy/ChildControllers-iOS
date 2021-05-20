//
//  BaseControllerLayout.swift
//  Test
//
//  Created by Atlas Yazılım on 20.05.2021.
//

import UIKit


class BaseControllerLayout: UIView {
    
    
    init() {
        super.init(frame: UIScreen.main.bounds)
        
        backgroundColor = .white
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
