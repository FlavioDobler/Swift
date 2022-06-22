//
//  ViewController.swift
//  AtividadeDelegate
//
//  Created by Flavio Dobler on 2022-06-20.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var adressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextField()
        
        
      

        
    }
    
    private func validateTextField () -> Bool {
        nameTextField.text != "" && passwordTextField.text != "" && adressTextField.text != "" ? true : false
    }
    
    private func configureTextField () {
        nameTextField.delegate = self
        adressTextField.delegate = self
        passwordTextField.delegate = self
        
        passwordTextField.isSecureTextEntry = true
        
    }
    
    @IBAction func sendButton(_ sender: Any) {
        print("Cadastro Realizado com Sucesso")
    }
    
    
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if validateTextField(){
            sendButton.isEnabled = true
        } else {
            sendButton.isEnabled = false
        }
        
    }
                
    
   
}

extension ViewController : UITextFieldDelegate {
   
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.systemBlue.cgColor
        textField.layer.borderWidth = 2
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text == ""{
        textField.layer.borderColor = UIColor.red.cgColor
        textField.layer.borderWidth = 2
        } else {
            textField.layer.borderWidth = 0
            textField.layer.borderColor = UIColor.lightGray.cgColor
        }
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if validateTextField() {
            sendButton.isEnabled = true
        }
        return true
    }
    
}
