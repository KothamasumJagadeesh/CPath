//
//  ViewController.swift
//  CPath
//
//  Created by Jagadeesh Kothamasum on 14/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func registerTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc1 = storyboard.instantiateViewController(identifier: "RegisterPage")
        
        vc1.modalPresentationStyle = .overFullScreen
        
        present(vc1, animated: true )
    }
    
    @IBAction func signInTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc1 = storyboard.instantiateViewController(identifier: "signUp")
        
        vc1.modalPresentationStyle = .overFullScreen
        
        present(vc1, animated: true )
    }
}

