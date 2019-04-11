//
//  ViewController.swift
//  DelegatesProtocols
//
//  Created by Michael Miles on 4/10/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

import UIKit

protocol TextDelegate {
    func sendText(withText: String)
}

class SenderViewController: UIViewController {

    @IBOutlet weak var sendingTextfield: UITextField!
    
    var delegate : TextDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func sendDataButtonPressed(_ sender: Any) {
        delegate?.sendText(withText: sendingTextfield.text ?? "No text input")
        dismiss(animated: true, completion: nil)
    }
    
}

