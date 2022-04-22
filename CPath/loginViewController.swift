//
//  loginViewController.swift
//  CPath
//
//  Created by Jagadeesh Kothamasum on 15/04/22.
//

import UIKit
import FirebaseAuth

class loginViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func registerTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(identifier: "RegisterPage")
        
        vc.modalPresentationStyle = .overFullScreen
        
        present(vc, animated: true )
        
        
    }
    
    
    @IBAction func signInTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc1 = storyboard.instantiateViewController(identifier: "success")
        
        vc1.modalPresentationStyle = .overFullScreen
        
        present(vc1, animated: true )
    }
    
    func validatefields()  {
        if(email.text?.isEmpty == true){
            print("Email is empty")
            return
        }
        
        if (password.text?.isEmpty == true) {
            print("Password is empty")
            return
        }
        login()
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { [weak self] authResult, err in
          guard let strongSelf = self else { return }
          // ...
        }
        
            }
            
        }

    


