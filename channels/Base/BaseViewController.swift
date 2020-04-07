//
//  BaseViewController.swift
//  channels
//
//  Created by Mahmoud Nasser on 3/23/20.
//  Copyright © 2020 Mahmoud Nasser. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController: UIViewController, BaseViewProtocol {

    func showLoading() {
    }

    func hideLoading() {
    }

    func showMessage(message: String) {
        print(message)
    }
}
