//
//  ContactsListViewController.swift
//  MoreSegues
//
//  Created by mac on 5/10/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class ContactsListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIPopoverPresentationControllerDelegate {
    var selectedItem = 0
    var contact:Contact?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailContact"{
            if let detailViewController = segue.destination as? DetailContactViewController{
                detailViewController.contact = contacts[selectedItem]
            }
        
        }else if segue.identifier == "popoverButton"{
            if let detailViewController = segue.destination as? DetailContactViewController {
                detailViewController.contact = myContact
                if let popover = detailViewController.popoverPresentationController{
                    popover.delegate = self
                }
            }
        }
    }
    
    @IBAction func popAction(_ sender: Any) {
        performSegue(withIdentifier: "popoverButton", sender: sender)
    }
    
    @IBAction func goToDetailsScreen(_ sender: Any) {
        
    performSegue(withIdentifier: "goToDetails", sender: sender)
        
    }
   
    
    var contacts: [Contact] = [
        Contact(image: nil, name: "John", phone: "(888) 555 5512"),
        Contact(image: nil, name: "Kate", phone: "(888) 123 5412")
    ]
    
    var myContact: Contact = Contact(image: nil, name: "Irina", phone: "(111) 333 1234")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView?.dataSource = self
        tableView?.delegate = self
    }
   
    @IBAction func foBack(segue:UIStoryboardSegue){
        tableView?.reloadData()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsCell", for: indexPath)
        let contact = contacts[indexPath.row]
        cell.textLabel?.text = contact.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ""
    }
    
    
    @IBOutlet weak var tableView: UITableView?
    
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return .none
    }
    
    
    
    
    

}
