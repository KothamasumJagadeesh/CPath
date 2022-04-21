//
//  signUpViewController.swift
//  CPath
//
//  Created by Jagadeesh Kothamasum on 15/04/22.
//

import UIKit
import FirebaseAuth
import Firebase

class signUpViewController: UIViewController {
    @IBOutlet weak var fullName: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signIntapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc1 = storyboard.instantiateViewController(identifier: "signUp")
        
        vc1.modalPresentationStyle = .overFullScreen
        
        present(vc1, animated: true )
    }
    
    @IBAction func registerTapped(_ sender: Any) {
        
        if(fullName.text?.isEmpty == true){
            print("enter full name")
            return
        }
        
        if(email.text?.isEmpty == true){
            print("enter email")
            return
        }
        
        if(password.text?.isEmpty == true){
            print("Enter password")
            return
        }
        if(confirmPassword.text?.isEmpty == true){
            print("Confirm your password ")
            return
        }
        
        signUp()
    }
    
    func signUp(){
        Auth.auth().createUser(withEmail: email.text!, password: password.text!){
            (authResult , error) in
            guard let user = authResult?.user, error == nil else {
                print("Error\(error?.localizedDescription)")
                return
            }
           
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let vc1 = self.storyboard?.instantiateViewController(identifier: "success")
            
            vc1?.modalPresentationStyle = .overFullScreen
            
            self.present(vc1!, animated: true )
        }
    }
    
}
