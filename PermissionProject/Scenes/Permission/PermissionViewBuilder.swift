//
//  PermissionViewBuilder.swift
//  PermissionProject
//
//  Created by Erkut Bas on 26.09.2021.
//

import Foundation
import UIKit

class PermissionViewBuilder {
    
    class func build(with type: PermissionType) -> UIViewController {
        
        let manager = PermissionViewFactory.getManager(with: type)
        let viewModel = PermissionViewModel(manager: manager)
        return PermissionViewController(viewModel: viewModel)
        
    }
    
}
