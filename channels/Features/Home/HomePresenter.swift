//
//  HomePresenter.swift
//  channels
//
//  Created by Mahmoud Nasser on 3/23/20.
//  Copyright © 2020 Mahmoud Nasser. All rights reserved.
//

import Foundation

class HomePresenter: BasePresenter, HomePresenterProtocol {
    
    private var view: HomeViewProtocol?
    private var model: HomeModelProtocol?
    
    init(view: HomeViewProtocol, model: HomeModelProtocol) {
        super.init(view: view, model: model)
        self.view = view
        self.model = model
    }
}
