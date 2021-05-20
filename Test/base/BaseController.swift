//
//  BaseController.swift
//  Test
//
//  Created by Atlas Yazılım on 20.05.2021.
//

import UIKit


class BaseController: UIViewController {

    var baseInteractor: BaseInteractor?
    
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        baseInteractor?.controller = self
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        baseInteractor?.clear()
        baseInteractor = nil
    }
}
