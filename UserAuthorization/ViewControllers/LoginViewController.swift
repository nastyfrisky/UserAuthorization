//
//  ViewController.swift
//  UserAuthorization
//
//  Created by Анастасия Ступникова on 20.12.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.delegate = self
        passwordTF.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            let tabbarVC = segue.destination as? UITabBarController,
            let firstVC = tabbarVC.viewControllers?.first,
            let welcomeVC = firstVC as? WelcomeViewController,
            let lastVC = tabbarVC.viewControllers?.last,
            let navigationVC = lastVC as? UINavigationController,
            let topVC = navigationVC.topViewController,
            let aboutMeVC = topVC as? AboutMeViewController
        else { return }
        welcomeVC.welcome = """
        Welcome, \(user.person.name) \(user.person.surname)!
        """
        aboutMeVC.biography = user.person.biography
        aboutMeVC.image = user.person.image
        aboutMeVC.navigationItem.title = """
        \(user.person.name) \(user.person.surname)
        """
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        if userNameTF.text != "User" || passwordTF.text != "Password" {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password!"
            )
            
            passwordTF.text = ""
            return false
        }
        
        return true
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func onTapForgotUsername() {
        showAlert(title: "Oops!", message: "Your name is User 😉")
    }
    
    @IBAction func onTapForgotPassword() {
        showAlert(title: "Oops!", message: "Your password is Password 😉")
    }
    
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else if textField == passwordTF {
            onTapDoneButton()
        }
        return false
    }
    
    private func onTapDoneButton() {
        if shouldPerformSegue(withIdentifier: "", sender: self) {
            performSegue(withIdentifier: "", sender: self)
        }
    }
}
