//
//  PopOverController.swift
//  Form Creator Pro
//
//  Created by Eric Reese on 5/13/19.
//  Copyright © 2019 ReeseGames. All rights reserved.
//

import UIKit

class PopOverController: UIViewController {
    
    //Outlets and Actions
    @IBOutlet weak var fileNameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    @IBAction func createForm(_ sender: Any) {
        Forms.createButtonPressed = true
        self.presentingViewController!.dismiss(animated: false, completion: nil)
    self.popoverPresentationController?.delegate?.popoverPresentationControllerDidDismissPopover?(popoverPresentationController!)
    }
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
