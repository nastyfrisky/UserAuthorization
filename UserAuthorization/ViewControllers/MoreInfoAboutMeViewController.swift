//
//  MoreInfoAboutMeViewController.swift
//  UserAuthorization
//
//  Created by Анастасия Ступникова on 10.01.2022.
//

import UIKit

class MoreInfoAboutMeViewController: UIViewController {
    
    @IBOutlet var biographyLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    var biography: String!
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        biographyLabel.text = biography
        imageView.image = image
    }

}
