//
//  PermissionLocalizables.swift
//  PermissionProject
//
//  Created by Erkut Bas on 26.09.2021.
//

import Foundation

enum PermissionLocalizables: String, GenericValueProtocol {
    
    typealias Value = String
    
    var value: String {
        return rawValue.toLocalize()
    }
    
    case cameraPermissionTitle = "cameraPermissionTitle"
    case cameraPermissionSubTitle = "cameraPermissionSubTitle"
    case photosPermissionTitle = "photosPermissionTitle"
    case photosPermissionSubTitle = "photosPermissionSubTitle"
    case permissionOk = "permissionOk"
    case permissionNotNow = "permissionNotNow"

}
