//
//  ViewController.swift
//  RobotPatternExample
//
//  Created by Hildequias Junior on 4/25/19.
//  Copyright © 2019 Hildequias Junior. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUser: UITextField!
    
    let manager: LoginManager = LoginManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func login(_ sender: UIButton) {
    
        manager.createUserToLogin(email: txtUser.text!, password: txtPassword.text!)
        if manager.loginService() == true {
            self.performSegue(withIdentifier: "homeSegue", sender: nil)
        }else{
            showAlert()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "homeSegue") {
            
        }
    }
    
    func showAlert() {
        
        let alertController = UIAlertController(title: "Aviso",
                                                message: "Email ou Senha inválido!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
}

