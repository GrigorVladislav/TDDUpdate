//
//  NewContactViewController.swift
//  MoreSegues
//
//  Created by mac on 5/10/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class NewContactViewController: UIViewController {
   
    var name :String = ""
    var phone : String = ""
    
    var newContact: Contact? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField?.text = name
        phoneTextField?.text = phone
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    func fillContact(){
        newContact = Contact(image: avatarImageView?.image, name: nameTextField?.text, phone: phoneTextField?.text)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        fillContact()
        if newContact != nil {
            let desVc = segue.destination as! ContactsListViewController
            desVc.contacts.append(newContact!)
        }
    }
    
    @IBOutlet weak var avatarImageView: UIImageView?
    @IBOutlet weak var nameTextField: UITextField?
    @IBOutlet weak var phoneTextField: UITextField?
}
