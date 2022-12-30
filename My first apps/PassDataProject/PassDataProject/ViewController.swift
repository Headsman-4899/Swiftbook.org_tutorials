//
//  ViewController.swift
//  PassDataProject
//
//  Created by Daulet on 27.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSeque", sender: nil)
    }
    
    @IBAction func unwindSequeToMainScreen(seque: UIStoryboardSegue) {
        guard seque.identifier == "unwindSeque" else { return }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.login = loginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

