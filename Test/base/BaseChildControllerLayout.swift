//
//  BaseChildControllerLayout.swift
//  Test
//
//  Created by Atlas Yazılım on 20.05.2021.
//

import UIKit



class BaseChildControllerLayout: UIView {
    
    
    init() {
        super.init(frame: .zero)
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
