//
//  Contact.swift
//  MoreSegues
//
//  Created by mac on 5/10/19.
//  Copyright © 2019 com. All rights reserved.
//

import Foundation
import UIKit
struct Contact
{
    var image: UIImage?
    var name: String?
    var phone: String?
    
    init(image: UIImage?, name: String?, phone: String?) {
        self.image = image
        self.name = name
        self.phone = phone
    }
}
