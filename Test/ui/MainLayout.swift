//
//  MainLayout.swift
//  Test
//
//  Created by Atlas Yazılım on 20.05.2021.
//

import UIKit


class MainLayout: BaseControllerLayout {
    
    let feedContainer: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let homeContainer: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    
    override init() {
        super.init()
        
        backgroundColor = .systemGreen
        
        addSubview(feedContainer)
        addSubview(homeContainer)
        
        
        NSLayoutConstraint.activate([
            feedContainer.centerXAnchor.constraint(equalTo: centerXAnchor),
            feedContainer.widthAnchor.constraint(equalTo: widthAnchor),
            feedContainer.topAnchor.constraint(equalTo: topAnchor),
            feedContainer.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4),
            
            homeContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            homeContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            homeContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            homeContainer.topAnchor.constraint(equalTo: feedContainer.bottomAnchor),
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
