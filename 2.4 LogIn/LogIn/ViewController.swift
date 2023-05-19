//
//  ViewController.swift
//  LogIn
//
//  Created by Vladislav Maslov on 27.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var login: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var loginButton: UIButton!
    
//    var account: User!
    private let user = User.getUserData()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        
        let welcomeVC = tabBarController.viewControllers?.first as! WelcomeViewController
        let navigationVC = tabBarController.viewControllers?.last as! InfoViewController
        navigationVC.user = user
        welcomeVC.user = user
    }
    
    
    @IBAction func forgotPass(_ sender: Any) {
        showAlert(title: "Oops!",
                  message: "You are forgot your Password! 😉")
    }
    
    @IBAction func forgotName(_ sender: Any) {
        showAlert(title: "Oops!",
                  message: "You are forgot your Name! 😉")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        login.delegate = self
        password.delegate = self
    }

    @IBAction func loginAction() {
        guard
            login.text == user.userLogin,
            password.text == user.userPassword
        else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password",
                      textField: password)
            return
        }
        
        performSegue(withIdentifier: "showPage", sender: nil)

    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        login.text = nil
        password.text = nil
    }
    
}

// MARK: - Alert Controller
extension ViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: Text Field Delegate
extension ViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == login {
            password.becomeFirstResponder()
        } else {
            loginAction()
        }
        return true
    }
}
