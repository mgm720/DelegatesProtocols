//
//  ReceiverViewController.swift
//  DelegatesProtocols
//
//  Created by Michael Miles on 4/10/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

import UIKit

extension ReceiverViewController : TextDelegate {
    func sendText(withText: String) {
        receivedTextLabel.text = withText
    }
}

class ReceiverViewController: UIViewController {
    
    @IBOutlet weak var receivedTextLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func goToSenderPressed(_ sender: Any) {
        let VC = storyboard?.instantiateViewController(withIdentifier: "SenderViewController") as! SenderViewController
        VC.delegate = self
        present(VC, animated: true, completion: nil)
    }
    
}
