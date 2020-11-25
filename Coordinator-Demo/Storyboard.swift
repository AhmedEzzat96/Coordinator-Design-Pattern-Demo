//
//  Storyboard.swift
//  Coordinator-Demo
//
//  Created by Ahmed Ezzat on 25/11/2020.
//  Copyright © 2020 IDEAcademy. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboard {
    static func instantiate() -> Self
}

extension Storyboard where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
