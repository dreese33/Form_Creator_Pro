//
//  Forms.swift
//  Form Creator Pro
//
//  Created by Eric Reese on 5/12/19.
//  Copyright © 2019 ReeseGames. All rights reserved.
//

import UIKit

class Forms: UITableViewController, UIPopoverPresentationControllerDelegate {
    
    static var createButtonPressed: Bool? = false
    
    //Load existing forms from database list
    //These will appear on the initial list
    var existingForms = [String]()
    
    @IBOutlet var theTableView: UITableView!
    @IBOutlet weak var barButton: UIBarButtonItem!
    
    
    //Define action for adding a new form
    @IBAction func createNewForm(_ sender: Any) {

        // Load and configure your view controller.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let optionsVC = storyboard.instantiateViewController(
            withIdentifier: "popOverController")
        
        // Use the popover presentation style for your view controller.
        optionsVC.modalPresentationStyle = .popover
        
        // Specify the anchor point for the popover.
        optionsVC.popoverPresentationController?.barButtonItem = barButton
        optionsVC.preferredContentSize = CGSize(width: theTableView.bounds.width, height: 164)
        optionsVC.popoverPresentationController?.delegate = self
        
        // Present the view controller (in a popover).
        self.present(optionsVC, animated: true)
    }
    
    //This is needed to ensure that the presentation style is used (pop over would not function without this)
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return .none
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:))))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    //Test code
    func tableCellAdd(formName: String, details: String, userImage: UIImage? = nil) -> UITableViewCell {
        let tableCell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        tableCell.textLabel?.text = formName
        tableCell.detailTextLabel?.text = details
        
        if (userImage != nil) {
            tableCell.imageView?.image = userImage
        }
        
        return tableCell
    }
    
    //Overriden functions within the UITableViewController class
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return existingForms.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableCellAdd(formName: "First Cell", details: "Description under the cell is this")
    }
    
    //Dismissed popover controller
    func popoverPresentationControllerDidDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) {
        if (Forms.createButtonPressed!) {
            Forms.createButtonPressed = false
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let newFormVC = storyboard.instantiateViewController(
                withIdentifier: "newForm")
            self.present(newFormVC, animated: true)
        }
    }
}
