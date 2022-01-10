//
//  AboutMeViewController.swift
//  UserAuthorization
//
//  Created by Анастасия Ступникова on 25.12.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    var biography: String!
    var image: UIImage!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            let moreAboutMeVC = segue.destination
                as? MoreInfoAboutMeViewController
        else { return }
        moreAboutMeVC.biography = biography
        moreAboutMeVC.image = image
    }

}
