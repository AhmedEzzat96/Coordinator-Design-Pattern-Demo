//
//  MainCoordinator.swift
//  Coordinator-Demo
//
//  Created by Ahmed Ezzat on 25/11/2020.
//  Copyright © 2020 IDEAcademy. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordonator = [Coordinator]()
    var navController: UINavigationController
    
    init(navController: UINavigationController) {
        self.navController = navController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navController.pushViewController(vc, animated: true)
    }
    
    func firstVC() {
        let vc = FirstVC.instantiate()
        vc.coordinator = self
        navController.pushViewController(vc, animated: true)
    }
    
    func secondVC() {
        let vc = SecondVC.instantiate()
        vc.coordinator = self
        navController.pushViewController(vc, animated: true)
    }

}
