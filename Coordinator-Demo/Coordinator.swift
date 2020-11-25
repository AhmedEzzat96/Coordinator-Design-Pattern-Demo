//
//  Coordinator.swift
//  Coordinator-Demo
//
//  Created by Ahmed Ezzat on 25/11/2020.
//  Copyright © 2020 IDEAcademy. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordonator: [Coordinator] { get set }
    var navController: UINavigationController { get set }
    
    func start()
}
