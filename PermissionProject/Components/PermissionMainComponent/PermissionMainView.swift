//
//  PermissionMainView.swift
//  PermissionProject
//
//  Created by Erkut Bas on 26.09.2021.
//

import UIKit

class PermissionMainView: GenericBaseView<PermissionMainViewData> {
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.clipsToBounds = true
        temp.backgroundColor = .white
        return temp
    }()
    
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [permissionImage, permissionInfoView, permissionActionModule])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.alignment = .center
        temp.distribution = .fill
        temp.axis = .vertical
        temp.spacing = 10
        return temp
    }()
    
    private lazy var permissionImage: UIImageView = {
        let temp = UIImageView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.contentMode = .scaleAspectFill
        return temp
    }()
    
    private lazy var permissionInfoView: LabelPackComponent = {
        let temp = LabelPackComponent()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    private lazy var permissionActionModule: ActionModule = {
        let temp = ActionModule()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addUserInterfaceComponents()
    }
    
    override func setupViewConfigurations() {
        super.setupViewConfigurations()
        setupContainerViewLayers()
    }
    
    private func addUserInterfaceComponents() {
        addSubview(containerView)
        containerView.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
           
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
        
            mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 40),
            mainStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -60),
            mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            
        ])
        
    }
    
    private func setupContainerViewLayers() {
        containerView.layer.cornerRadius = 10
        containerView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        permissionImage.image = data.image
        permissionInfoView.setData(by: data.labelPackData)
        permissionActionModule.setData(by: data.actionModuleData)
    }
    
}
