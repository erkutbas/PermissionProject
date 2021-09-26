//
//  PermissionImages.swift
//  PermissionProject
//
//  Created by Erkut Bas on 26.09.2021.
//

import UIKit

enum PermissionImages: String, GenericValueProtocol {

    typealias Value = UIImage
    
    var value: UIImage {
        return UIImage(imageLiteralResourceName: rawValue)
    }
    
    case camera = "camera_"
    case photos = "notif_"
    
}
