//
//  PhotosPermissionManager.swift
//  PermissionProject
//
//  Created by Erkut Bas on 26.09.2021.
//

import Foundation

class PhotosPermissionManager: PermissionManagerProtocol {
    
    func requestPermission(with completion: @escaping VoidCompletionBlock) {
        
    }
    
    func getPermissionMainViewData(with negativeListener: @escaping VoidCompletionBlock, with positiveListener: @escaping VoidCompletionBlock) -> PermissionMainViewData {
        
        return PermissionMainViewData(
            image: PermissionImages.photos.value,
            labelPackData: LabelPackComponentData(
                title: PermissionLocalizables.photosPermissionTitle.value,
                subTitle: PermissionLocalizables.photosPermissionSubTitle.value),
            actionModuleData: ActionModuleData(
                negativeButtonData: ActionButtonData(text: PermissionLocalizables.permissionNotNow.value, buttonType: .outlined(.bright)).setActionButtonListener(by: negativeListener),
                positiveButtonData: ActionButtonData(text: PermissionLocalizables.permissionOk.value, buttonType: .filled(.bright)).setActionButtonListener(by: positiveListener)))
        
    }
    
}
