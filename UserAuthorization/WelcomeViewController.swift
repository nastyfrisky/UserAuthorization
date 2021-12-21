//
//  WelcomeViewController.swift
//  UserAuthorization
//
//  Created by Анастасия Ступникова on 21.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcome
    }
}
