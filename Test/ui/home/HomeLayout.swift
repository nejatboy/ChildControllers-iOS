//
//  HomeLayout.swift
//  Test
//
//  Created by Atlas Yazılım on 20.05.2021.
//

import UIKit


class HomeLayout: BaseChildControllerLayout {
    
    private let buttonTest: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Test", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
    override init() {
        super.init()
        
        backgroundColor = .systemOrange
        
        addSubview(buttonTest)
        
        NSLayoutConstraint.activate([
            buttonTest.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonTest.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        buttonTest.addTarget(self, action: #selector(clicked), for: .touchUpInside)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc private func clicked() {
        (next as? HomeController)?.buttonTestClicked()
    }
}
