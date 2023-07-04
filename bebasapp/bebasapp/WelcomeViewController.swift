//
//  ViewController.swift
//  bebasapp
//
//  Created by Phincon on 03/07/23.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    //Email Text Field
    @IBOutlet weak var emailTextField: UITextField!
    
    //Password Text Field
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    
    //SignIn Action
    @IBAction func SignInAction(_ sender: UIButton) {
        let performHome = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(performHome, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.addTarget(self, action: #selector(disabledBtn), for: .editingChanged)
        
        passwordTextField.addTarget(self, action: #selector(disabledBtn), for: .editingChanged)
    }
    
    
    @objc func disabledBtn(){
        if passwordTextField.text != "" && emailTextField.text != "" {
            signInBtn.isEnabled = true
            signInBtn.backgroundColor = .blue
        } else  {
            signInBtn.isEnabled = false
            signInBtn.backgroundColor = .gray
        }
    }
    
}


