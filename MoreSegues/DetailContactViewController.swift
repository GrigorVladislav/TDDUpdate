//
//  DetailContactViewController.swift
//  MoreSegues
//
//  Created by mac on 5/10/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class DetailContactViewController: UIViewController {
    var contact: Contact? = nil
    
    override func viewWillLayoutSubviews() {
        
        if let fittedSize = topLevelStackView?.sizeThatFits(UIView.layoutFittingCompressedSize){
            preferredContentSize = CGSize(width: fittedSize.width + 50, height: fittedSize.height + 50)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        avatarImageView?.image = contact?.image
        nameLabel?.text = contact?.name
        phoneLabel?.text = contact?.phone
    }
    
    @IBOutlet weak var avatarImageView: UIImageView?
    @IBOutlet weak var nameLabel: UILabel?
    @IBOutlet weak var phoneLabel: UILabel?
    @IBOutlet weak var topLevelStackView: UIStackView?
}
