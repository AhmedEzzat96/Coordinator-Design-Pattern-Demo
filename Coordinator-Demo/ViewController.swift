//
//  ViewController.swift
//  Coordinator-Demo
//
//  Created by Ahmed Ezzat on 25/11/2020.
//  Copyright © 2020 IDEAcademy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboard {
    //MARK:- Properties
    weak var coordinator: MainCoordinator?
    
    //MARK:- Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:- IBActions
    @IBAction func goToFirstVC(_ sender: UIButton) {
        coordinator?.firstVC()
    }
    
    @IBAction func goToSecondVC(_ sender: UIButton) {
        coordinator?.secondVC()
    }

}

