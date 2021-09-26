//
//  PermissionViewFactory.swift
//  PermissionProject
//
//  Created by Erkut Bas on 26.09.2021.
//

import Foundation

class PermissionViewFactory {
    
    class func getManager(with type: PermissionType) -> PermissionManagerProtocol {
        switch type {
        case .camera:
            return CameraPermisionManager()
        case .photos:
            return PhotosPermissionManager()
        }
    }
    
}
