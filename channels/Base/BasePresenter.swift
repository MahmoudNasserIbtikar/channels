//
//  BasePresenter.swift
//  channels
//
//  Created by Mahmoud Nasser on 3/23/20.
//  Copyright © 2020 Mahmoud Nasser. All rights reserved.
//

import Foundation

class BasePresenter: NSObject, BasePresenterProtocol {

    private var view: BaseViewProtocol?
    private var model: BaseModelProtocol?
    
    private override init() {
        
    }
    
    init(view: BaseViewProtocol, model: BaseModelProtocol ) {
        self.view = view
        self.model = model
    }

    func showErrorMessage(errorMessage: String) {
        view?.showMessage(message: errorMessage)
    }
}
